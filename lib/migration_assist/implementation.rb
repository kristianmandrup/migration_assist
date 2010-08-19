require 'rails/generators'
require 'rails/generators/migration'
require 'rails3_assist'

module Rails::Migration::Assist
  include Rails::Generators::Migration
  include Rails::Assist::Migration
    
  def reverse_migration_name name
    name.gsub(/^add_/, 'remove_').gsub(/^create_/, 'drop_')
  end

  def reverse_migration! migration_path
    reverse_class_names! migration_path        
    reverse_up_down_methods! migration_path
  end

  def reverse_class_names! migration_path
    # Change class name
    gsub_file migration_path, /class Add/, 'class Remove'
    gsub_file migration_path, /class Create/, 'class Drop'
  end

  def reverse_up_down_methods! migration_path
    # swap up and down methods
    gsub_file migration_path, /up/, 'dwn'
    gsub_file migration_path, /down/, 'up'
    gsub_file migration_path, /dwn/, 'down'        
  end

  def latest_migration_file dir, name
    self.class.latest_migration_file dir, name
  end
  
  def migration name, template_name=nil
    migration_template "#{template_name || name}.erb", migration_file_name(name)
  end
end
