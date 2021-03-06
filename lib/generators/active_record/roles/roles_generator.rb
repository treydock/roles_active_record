require 'rails_artifactor'
require 'generators/active_record/roles/core_ext'

module ActiveRecord 
  module Generators
    class RolesGenerator < Rails::Generators::NamedBase      
      desc "Add role strategy to a User model" 

      argument     :user_class,         :type => :string,   :default => 'User',           :desc => "User class name"
      
      class_option :strategy,           :type => :string,   :aliases => "-s",   :default => 'role_string', 
                   :desc => "Role strategy to use (admin_flag, role_string, one_role, many_roles, roles_mask)"

      class_option :roles,              :type => :array,    :aliases => "-r",   :default => [],         :desc => "Valid roles"
      class_option :role_class,         :type => :string,   :aliases => "-rc",  :default => 'Role',     :desc => "Role class"
      class_option :user_role_class,    :type => :string,   :aliases => "-urc", :default => 'UserRole', :desc => "User Role join class"
      
      class_option :default_roles,      :type => :boolean,  :aliases => "-dr",  :default => true,       :desc => "Use default roles :admin and :base"
      class_option :logfile,            :type => :string,   :aliases => "-lf",  :default => nil,       :desc => "Logfile location"
      class_option :logging,            :type => :boolean,  :aliases => "-l",   :default => false,      :desc => "Logging on?"

      source_root File.dirname(__FILE__) + '/templates'

      def apply_role_strategy
        if logging?
          require 'logging_assist'          
          self.class.send :include, Rails3::Assist::BasicLogger          
          logger.add_logfile :logfile => logfile if logfile
        end

        logger.debug "apply_role_strategy for : #{strategy} in model #{user_class}" if logging?

        if !valid_strategy?
          logger.error "Strategy '#{strategy}' is not valid, at least not for Active Record" if logging?
          return 
        end

        if !has_model? user_file                
          logger.error "Could not apply roles strategy to #{user_class} model since the model file was not found" if logging?
          return 
        end

        begin                    
          logger.debug "Trying to insert roles code into #{user_class}" if logging?
          insert_into_model user_file do
            insertion_text
          end
      
          copy_role_models if roles_model_strategy?
        rescue
          # logger.debug "Error applying roles strategy to #{name}"
          logger.error "Error applying roles strategy to #{user_class}" if logging?
        end
      end 
            
      protected                  

      extend RailsAssist::UseMacro
      
      use_orm :active_record      

      def logging?
        options[:logging]         
      end        

      def user_file
        user_class.as_filename
      end

      def role_file
        role_class.as_filename
      end

      def user_role_file
        user_role_class.as_filename
      end

      def copy_role_models
        logger.debug 'copy_role_models'
        case strategy.to_sym  
        when :one_role
          copy_one_role_model
        when :many_roles
          copy_many_roles_models
        end
      end

      def copy_one_role_model
        logger.debug "generating role model for one_role strategy: #{role_file}" if logging?
        template 'one_role/role.rb', "app/models/#{role_file}.rb"
      end

      def copy_many_roles_models        
        logger.debug "generating role models for many_roles strategy: #{role_file} and #{user_file}" if logging?

        template 'many_roles/role.rb', "app/models/#{role_file}.rb"        
        template 'many_roles/user_role.rb', "app/models/#{user_role_file}.rb"
      end

      def valid_strategy?
        valid_strategies.include? strategy.to_sym
      end

      def valid_strategies
        [:admin_flag, :role_string, :one_role, :many_roles, :roles_mask]
      end        

      def roles_model_strategy?
        [:one_role, :many_roles].include? strategy.to_sym
      end  

      def role_class
        options[:role_class].classify || 'Role'
      end

      def user_role_class
        options[:user_role_class].classify || 'UserRole'
      end

      def logfile
        options[:logfile]
      end

      def orm
        :active_record
      end
  
      def default_roles
        options[:default_roles] ? [:admin, :guest] : []        
      end
  
      def roles_to_add
        @roles_to_add ||= default_roles.concat(options[:roles]).to_symbols.uniq
      end
  
      def roles        
        roles_to_add.map{|r| ":#{r}" }
      end

      def has_valid_roles_statement? 
        !(read_model(user_class) =~ /valid_roles_are/).nil?
      end

      def valid_roles_statement
        return '' if has_valid_roles_statement?
        roles ? "valid_roles_are #{roles.join(', ')}" : ''
      end
  
      def role_strategy_statement 
        "strategy :#{strategy} #{strategy_options}"
      end

      def strategy_options
        if role_class != 'Role' || user_role_class != 'UserRole' && role_ref_strategy?
          return ", :role_class => '#{role_class}', :user_role_class => '#{user_role_class}'"
        end
        ''        
      end
    
      def insertion_text
        %Q{include Roles::#{orm.to_s.camelize}
  #{role_strategy_statement}
  #{valid_roles_statement}}
      end
  
      def strategy
        options[:strategy]                
      end
    end
  end
end