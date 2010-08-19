require 'rspec'
require 'rspec/autorun' 
require 'migration_assist'

RSpec.configure do |config|  
end

def fixtures_dir
  File.expand_path(File.dirname(__FILE__) + '/migration_assist/fixtures')
end
