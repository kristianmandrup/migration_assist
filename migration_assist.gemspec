# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{migration_assist}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Kristian Mandrup}]
  s.date = %q{2011-08-24}
  s.description = %q{Assists in handling migrations, including generating migration files from a Thor Generator}
  s.email = %q{kmandrup@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "lib/migration_assist.rb",
    "lib/migration_assist/class_methods.rb",
    "lib/migration_assist/helper/file_name.rb",
    "lib/migration_assist/helper/migration.rb",
    "lib/migration_assist/implementation.rb",
    "lib/migration_assist/namespaces.rb",
    "migration_assist.gemspec",
    "spec/TODO.textile",
    "spec/generators/migration/migration_generator.rb",
    "spec/generators/migration/templates/create_users.erb",
    "spec/load_spec.rb",
    "spec/migration_assist/class_methods_spec.rb",
    "spec/migration_assist/fixtures/001_migration_a.rb",
    "spec/migration_assist/fixtures/002_migration_b.rb",
    "spec/migration_assist/fixtures/003_migration_a.rb",
    "spec/migration_assist/fixtures/004_migration_c.rb",
    "spec/migration_assist/implementation_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/kristianmandrup/migration_assist}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.8}
  s.summary = %q{Assists in handling migrations}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<require_all>, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0.1"])
      s.add_runtime_dependency(%q<sugar-high>, [">= 0.6.0"])
      s.add_runtime_dependency(%q<rails_artifactor>, [">= 0.5.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 1.6.4"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.1"])
      s.add_development_dependency(%q<rcov>, [">= 0.9"])
    else
      s.add_dependency(%q<require_all>, ["~> 1.2.0"])
      s.add_dependency(%q<rails>, [">= 3.0.1"])
      s.add_dependency(%q<sugar-high>, [">= 0.6.0"])
      s.add_dependency(%q<rails_artifactor>, [">= 0.5.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 1.6.4"])
      s.add_dependency(%q<bundler>, [">= 1.0.1"])
      s.add_dependency(%q<rcov>, [">= 0.9"])
    end
  else
    s.add_dependency(%q<require_all>, ["~> 1.2.0"])
    s.add_dependency(%q<rails>, [">= 3.0.1"])
    s.add_dependency(%q<sugar-high>, [">= 0.6.0"])
    s.add_dependency(%q<rails_artifactor>, [">= 0.5.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 1.6.4"])
    s.add_dependency(%q<bundler>, [">= 1.0.1"])
    s.add_dependency(%q<rcov>, [">= 0.9"])
  end
end

