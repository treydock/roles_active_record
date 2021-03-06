require 'spec_helper'

def api_migrate
  migrate('many_roles')
end

def api_fixture
  load 'fixtures/many_roles_setup_unique_check.rb'
end

def api_name
  :many_roles
end

describe "Roles for Active Record: #{api_name}" do   
  require "roles_active_record/strategy/user_setup.rb"

  before do
    api_fixture
    default_user_setup    
  end

  describe '#valid_roles' do
    context ':guest role twice in list of valid roles' do
      it 'roles table should not have duplicate role :guest' do  
        Role.all.map(&:name).select{|n| n == 'guest'}.size.should == 1
      end
    end
  end
end




