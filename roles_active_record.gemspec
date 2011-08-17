# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{roles_active_record}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Kristian Mandrup}]
  s.date = %q{2011-08-17}
  s.description = %q{Makes it easy to set a role strategy on your User model in Active Record}
  s.email = %q{kmandrup@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.textile"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Changelog.textile",
    "Gemfile",
    "LICENSE",
    "NOTES.textile",
    "README.textile",
    "Rakefile",
    "VERSION",
    "config/database.yml",
    "lib/generators/active_record/roles/core_ext.rb",
    "lib/generators/active_record/roles/roles_generator.rb",
    "lib/generators/active_record/roles/templates/many_roles/role.rb",
    "lib/generators/active_record/roles/templates/many_roles/user_role.rb",
    "lib/generators/active_record/roles/templates/one_role/role.rb",
    "lib/generators/active_record/roles_migration/roles_migration_generator.rb",
    "lib/generators/active_record/roles_migration/templates/3_1/add_admin_flag_strategy.erb",
    "lib/generators/active_record/roles_migration/templates/3_1/add_many_roles_strategy.erb",
    "lib/generators/active_record/roles_migration/templates/3_1/add_one_role_strategy.erb",
    "lib/generators/active_record/roles_migration/templates/3_1/add_role_string_strategy.erb",
    "lib/generators/active_record/roles_migration/templates/3_1/add_roles_mask_strategy.erb",
    "lib/generators/active_record/roles_migration/templates/add_admin_flag_strategy.erb",
    "lib/generators/active_record/roles_migration/templates/add_many_roles_strategy.erb",
    "lib/generators/active_record/roles_migration/templates/add_one_role_strategy.erb",
    "lib/generators/active_record/roles_migration/templates/add_role_string_strategy.erb",
    "lib/generators/active_record/roles_migration/templates/add_roles_mask_strategy.erb",
    "lib/roles_active_record.rb",
    "lib/roles_active_record/base.rb",
    "lib/roles_active_record/many_roles.rb",
    "lib/roles_active_record/namespaces.rb",
    "lib/roles_active_record/one_role.rb",
    "lib/roles_active_record/role.rb",
    "lib/roles_active_record/strategy.rb",
    "lib/roles_active_record/strategy/multi.rb",
    "lib/roles_active_record/strategy/multi/many_roles.rb",
    "lib/roles_active_record/strategy/multi/roles_mask.rb",
    "lib/roles_active_record/strategy/shared.rb",
    "lib/roles_active_record/strategy/single.rb",
    "lib/roles_active_record/strategy/single/admin_flag.rb",
    "lib/roles_active_record/strategy/single/one_role.rb",
    "lib/roles_active_record/strategy/single/role_string.rb",
    "lib/views/_multi_role_selector.erb.html",
    "lib/views/_single_role_selector.erb.html",
    "roles_active_record.gemspec",
    "spec/db/database.yml",
    "spec/fixtures/many_roles_setup.rb",
    "spec/fixtures/many_roles_setup_unique_check.rb",
    "spec/fixtures/one_role_setup.rb",
    "spec/fixtures/one_role_setup_unique_check.rb",
    "spec/generator_spec_helper.rb",
    "spec/migration_spec_helper.rb",
    "spec/migrations/admin_flag/002_add_admin_flag_strategy.rb",
    "spec/migrations/many_roles/002_add_many_roles_strategy.rb",
    "spec/migrations/one_role/002_add_one_role_strategy.rb",
    "spec/migrations/role_string/002_add_role_string_strategy.rb",
    "spec/migrations/roles_mask/002_add_roles_mask_strategy.rb",
    "spec/migrations/users/001_create_users.rb",
    "spec/roles_active_record/generators/admin_flag_gen_spec.rb",
    "spec/roles_active_record/generators/many_roles_gen_spec.rb",
    "spec/roles_active_record/generators/migration_generator_spec.rb",
    "spec/roles_active_record/generators/one_role_gen_spec.rb",
    "spec/roles_active_record/generators/roles_migration/admin_flag_spec.rb",
    "spec/roles_active_record/generators/roles_migration/many_roles_spec.rb",
    "spec/roles_active_record/generators/roles_migration/one_role_spec.rb",
    "spec/roles_active_record/generators/roles_migration/role_string_spec.rb",
    "spec/roles_active_record/generators/roles_migration/roles_mask_spec.rb",
    "spec/roles_active_record/strategy/api.rb",
    "spec/roles_active_record/strategy/api_examples.rb",
    "spec/roles_active_record/strategy/multi/many_roles_spec.rb",
    "spec/roles_active_record/strategy/multi/many_roles_unique_spec.rb",
    "spec/roles_active_record/strategy/multi/roles_mask_spec.rb",
    "spec/roles_active_record/strategy/single/admin_flag_spec.rb",
    "spec/roles_active_record/strategy/single/one_role_spec.rb",
    "spec/roles_active_record/strategy/single/one_role_unique_spec.rb",
    "spec/roles_active_record/strategy/single/role_string_spec.rb",
    "spec/roles_active_record/strategy/user_setup.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/kristianmandrup/roles_active_record}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.8}
  s.summary = %q{Implementation of Roles generic API for Active Record}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.1"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.1"])
      s.add_runtime_dependency(%q<arel>, [">= 2.0"])
      s.add_runtime_dependency(%q<meta_where>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<sugar-high>, [">= 0.5.0"])
      s.add_runtime_dependency(%q<require_all>, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<roles_generic>, [">= 0.5.0"])
      s.add_runtime_dependency(%q<rails_artifactor>, [">= 0.4.0"])
      s.add_development_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_development_dependency(%q<generator-spec>, [">= 0.7.5"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0.6.7"])
      s.add_development_dependency(%q<jeweler>, [">= 1.6.4"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.10"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.0.1"])
      s.add_dependency(%q<activesupport>, [">= 3.0.1"])
      s.add_dependency(%q<arel>, [">= 2.0"])
      s.add_dependency(%q<meta_where>, [">= 1.0.1"])
      s.add_dependency(%q<sugar-high>, [">= 0.5.0"])
      s.add_dependency(%q<require_all>, ["~> 1.2.0"])
      s.add_dependency(%q<roles_generic>, [">= 0.5.0"])
      s.add_dependency(%q<rails_artifactor>, [">= 0.4.0"])
      s.add_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_dependency(%q<generator-spec>, [">= 0.7.5"])
      s.add_dependency(%q<database_cleaner>, [">= 0.6.7"])
      s.add_dependency(%q<jeweler>, [">= 1.6.4"])
      s.add_dependency(%q<bundler>, [">= 1.0.10"])
      s.add_dependency(%q<rdoc>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.0.1"])
    s.add_dependency(%q<activesupport>, [">= 3.0.1"])
    s.add_dependency(%q<arel>, [">= 2.0"])
    s.add_dependency(%q<meta_where>, [">= 1.0.1"])
    s.add_dependency(%q<sugar-high>, [">= 0.5.0"])
    s.add_dependency(%q<require_all>, ["~> 1.2.0"])
    s.add_dependency(%q<roles_generic>, [">= 0.5.0"])
    s.add_dependency(%q<rails_artifactor>, [">= 0.4.0"])
    s.add_dependency(%q<rspec>, [">= 2.5.0"])
    s.add_dependency(%q<generator-spec>, [">= 0.7.5"])
    s.add_dependency(%q<database_cleaner>, [">= 0.6.7"])
    s.add_dependency(%q<jeweler>, [">= 1.6.4"])
    s.add_dependency(%q<bundler>, [">= 1.0.10"])
    s.add_dependency(%q<rdoc>, [">= 0"])
  end
end

