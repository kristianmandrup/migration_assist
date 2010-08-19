require 'rails/generators'
require 'rails/generators/migration'
require 'rails3_assist'

class MigrationGenerator < Rails::Generators::NamedBase 
  include Rails::Assist::Generators::Migration

  desc "Creates a migration"

  def self.source_root
    @source_root ||= File.expand_path("../templates", __FILE__)
  end
    
  def create_migration     
    info "Create migration: #{name} from template: 'create_users'" 
    migration name, 'create_users'
  end
end 
