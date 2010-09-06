# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{roles_active_record}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristian Mandrup"]
  s.date = %q{2010-09-06}
  s.description = %q{Makes it easy to set a role strategy on your User model in Active Record}
  s.email = %q{kmandrup@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     ".rspec",
     "Gemfile",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "development.sqlite3",
     "lib/generators/active_record/roles/roles_generator.rb",
     "lib/generators/active_record/roles_migration/roles_migration_generator.rb",
     "lib/generators/active_record/roles_migration/templates/add_admin_flag_strategy.erb",
     "lib/generators/active_record/roles_migration/templates/add_many_roles_strategy.erb",
     "lib/generators/active_record/roles_migration/templates/add_one_role_strategy.erb",
     "lib/generators/active_record/roles_migration/templates/add_role_string_strategy.erb",
     "lib/generators/active_record/roles_migration/templates/add_roles_mask_to_users_migration.erb",
     "lib/generators/active_record/setup/setup_generator.rb",
     "lib/roles_active_record/base.rb",
     "lib/roles_active_record/namespaces.rb",
     "lib/roles_active_record/role.rb",
     "lib/roles_active_record/strategy.rb",
     "lib/roles_active_record/strategy/multi/many_roles.rb",
     "lib/roles_active_record/strategy/multi/roles_mask.rb",
     "lib/roles_active_record/strategy/single/admin_flag.rb",
     "lib/roles_active_record/strategy/single/one_role.rb",
     "lib/roles_active_record/strategy/single/role_string.rb",
     "lib/roles_for_active_record.rb",
     "lib/views/_multi_role_selector.erb.html",
     "lib/views/_single_role_selector.erb.html",
     "sandbox/Rakefile",
     "sandbox/add_role_to_users_migration.erb",
     "sandbox/create_roles_migration.erb",
     "sandbox/create_user_roles_migration.erb",
     "sandbox/database.log",
     "sandbox/database.yml",
     "sandbox/development.sqlite3",
     "sandbox/migrate/201002508_create_roles.rb",
     "sandbox/migrate/20102507_create_users.rb",
     "sandbox/model_base.rb",
     "sandbox/test.rb",
     "spec/db/database.yml",
     "spec/fixtures/many_roles_setup.rb",
     "spec/fixtures/one_role_setup.rb",
     "spec/migrations/admin_flag/004_add_admin_flag_to_users.rb",
     "spec/migrations/many_roles/002_create_roles.rb",
     "spec/migrations/many_roles/003_create_user_roles.rb",
     "spec/migrations/one_role/002_create_roles.rb",
     "spec/migrations/one_role/003_add_role_to_users.rb",
     "spec/migrations/role_string/002_add_role_string_to_users.rb",
     "spec/migrations/roles_mask/005_add_roles_mask_to_users.rb",
     "spec/migrations/users/001_create_users.rb",
     "spec/roles_active_record/admin_flag_spec.rb",
     "spec/roles_active_record/generators/migration_spec_helper.rb",
     "spec/roles_active_record/generators/roles_migration/admin_flag_spec.rb",
     "spec/roles_active_record/generators/roles_migration/many_roles_spec.rb",
     "spec/roles_active_record/generators/roles_migration/one_role_spec.rb",
     "spec/roles_active_record/generators/roles_migration/role_string_spec.rb",
     "spec/roles_active_record/generators/roles_migration/roles_mask_spec.rb",
     "spec/roles_active_record/generators/setup_generator_spec.rb",
     "spec/roles_active_record/many_roles_spec.rb",
     "spec/roles_active_record/one_role_spec.rb",
     "spec/roles_active_record/role_string_spec.rb",
     "spec/roles_active_record/roles_mask_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/kristianmandrup/roles_for_dm}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Implementation of Roles generic API for Active Record}
  s.test_files = [
    "spec/fixtures/many_roles_setup.rb",
     "spec/fixtures/one_role_setup.rb",
     "spec/migrations/admin_flag/004_add_admin_flag_to_users.rb",
     "spec/migrations/many_roles/002_create_roles.rb",
     "spec/migrations/many_roles/003_create_user_roles.rb",
     "spec/migrations/one_role/002_create_roles.rb",
     "spec/migrations/one_role/003_add_role_to_users.rb",
     "spec/migrations/role_string/002_add_role_string_to_users.rb",
     "spec/migrations/roles_mask/005_add_roles_mask_to_users.rb",
     "spec/migrations/users/001_create_users.rb",
     "spec/roles_active_record/admin_flag_spec.rb",
     "spec/roles_active_record/generators/migration_spec_helper.rb",
     "spec/roles_active_record/generators/roles_migration/admin_flag_spec.rb",
     "spec/roles_active_record/generators/roles_migration/many_roles_spec.rb",
     "spec/roles_active_record/generators/roles_migration/one_role_spec.rb",
     "spec/roles_active_record/generators/roles_migration/role_string_spec.rb",
     "spec/roles_active_record/generators/roles_migration/roles_mask_spec.rb",
     "spec/roles_active_record/generators/setup_generator_spec.rb",
     "spec/roles_active_record/many_roles_spec.rb",
     "spec/roles_active_record/one_role_spec.rb",
     "spec/roles_active_record/role_string_spec.rb",
     "spec/roles_active_record/roles_mask_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.0.0.beta.19"])
      s.add_development_dependency(%q<yaml>, [">= 0"])
      s.add_development_dependency(%q<logger>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
      s.add_development_dependency(%q<generator_spec>, ["~> 0.4.5"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<arel>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<meta_where>, [">= 0.5.2"])
      s.add_runtime_dependency(%q<sugar-high>, ["~> 0.2.2"])
      s.add_runtime_dependency(%q<require_all>, ["~> 1.1.0"])
      s.add_runtime_dependency(%q<sugar-high>, ["~> 0.2.3"])
      s.add_runtime_dependency(%q<roles_generic>, ["~> 0.2.2"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.0.0.beta.19"])
      s.add_dependency(%q<yaml>, [">= 0"])
      s.add_dependency(%q<logger>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
      s.add_dependency(%q<generator_spec>, ["~> 0.4.5"])
      s.add_dependency(%q<activerecord>, ["~> 3.0.0"])
      s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
      s.add_dependency(%q<arel>, ["~> 1.0.0"])
      s.add_dependency(%q<meta_where>, [">= 0.5.2"])
      s.add_dependency(%q<sugar-high>, ["~> 0.2.2"])
      s.add_dependency(%q<require_all>, ["~> 1.1.0"])
      s.add_dependency(%q<sugar-high>, ["~> 0.2.3"])
      s.add_dependency(%q<roles_generic>, ["~> 0.2.2"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.0.0.beta.19"])
    s.add_dependency(%q<yaml>, [">= 0"])
    s.add_dependency(%q<logger>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
    s.add_dependency(%q<generator_spec>, ["~> 0.4.5"])
    s.add_dependency(%q<activerecord>, ["~> 3.0.0"])
    s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
    s.add_dependency(%q<arel>, ["~> 1.0.0"])
    s.add_dependency(%q<meta_where>, [">= 0.5.2"])
    s.add_dependency(%q<sugar-high>, ["~> 0.2.2"])
    s.add_dependency(%q<require_all>, ["~> 1.1.0"])
    s.add_dependency(%q<sugar-high>, ["~> 0.2.3"])
    s.add_dependency(%q<roles_generic>, ["~> 0.2.2"])
  end
end

