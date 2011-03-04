require 'rspec'
require 'migration_assist'

RSpec.configure do |config|
  config.mock_with :mocha  
end

def spec_dir
  File.dirname(__FILE__)
end

def fixtures_dir
  File.expand_path(spec_dir + '/migration_assist/fixtures')
end
