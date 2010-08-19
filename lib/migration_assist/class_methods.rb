# NOTE:
# Alternative to use this helper is to inherit from ActiveRecord::Generators::Base
# which provides the #next_migration_number class method that lets #migration_template work as expected!
# 

module Rails::Assist::Generators
  module Migration
    
    def self.included(base) #:nodoc: 
      base.extend ClassMethods      
    end

    module ClassMethods    
      def migration_lookup_at(dirname) #:nodoc:
        Dir.glob("#{dirname}/[0-9]*_*.rb")
      end

      def migration_exists?(dirname, file_name) #:nodoc:
        migration_lookup_at(dirname).grep(/\d+_#{file_name}.rb$/).first
      end 
      alias_method :first_migration_file, :migration_exists?              

      def latest_migration_file(dirname, file_name) #:nodoc:
        migration_lookup_at(dirname).grep(/\d+_#{file_name}.rb$/).sort.last
      end 

      def current_migration_number(dirname) #:nodoc:
        migration_lookup_at(dirname).collect do |file|
          File.basename(file).split("_").first.to_i
        end.max.to_i
      end

      def next_migration_number(dirname) #:nodoc:
        orm = Rails.configuration.generators.options[:rails][:orm]
        require "rails/generators/#{orm}"
        "#{orm.to_s.camelize}::Generators::Base".constantize.next_migration_number(dirname)
      rescue
        raise NotImplementedError
      end
    end
  end
end