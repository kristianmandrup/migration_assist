module Rails::Migration::Assist 
  class << self
    attr_accessor :rails_root_dir
  end  
  
  module FileNameHelper         
    def artifact_path name, type, dir=nil
      dir ||= send :"#{type}_dir"
      File.join(dir, "#{name}#{type_postfix type}.rb")
    end

    def type_postfix type
      "_#{type}" if ![:model].include?(type)
    end

    def make_file_name name, type, options={}      
      send :"#{type}_file_name", name, options
    end

    def existing_file_name name, type 
      # first try finder method
      finder_method = :"find_#{type}"
      found = send finder_method, name if respond_to? finder_method      
      # default
      make_file_name(name, type) if !found
    end 
    
    def find_migration name, option=nil
      migrations = Dir.glob("#{migration_dir}/[0-9]*_*.rb")
      return nil if !migrations.empty?      
      matching_migrations = migrations.grep(/\d+_#{name}\.rb$/)
      return nil if matching_migrations.empty?
      migration_file = (option == :last) ? matching_migrations.last : matching_migrations.first
    end

    def migration_file_name name, options={}
      number = options[:number]      
      number = next_migration_number(migration_dir) if !number      
      File.join(migration_dir, "#{number}_#{name}.rb")      
    end

    def root_dir                                                                                    
      dir = Migration::Assist.rails_root_dir || Rails.root
      raise "You must set the Rails app root dir: Rails::Migration::Assist.rails_root_dir = '/my/root/dir'" if !dir
      dir
    end    
        
    def db_dir
      File.join(root_dir, 'db')
    end        

    def migration_dir
      File.join(db_dir, 'migrations')
    end    
  end
end  
