require 'rspec/core'
require 'migration_assist'

RSpec.configure do |config|
  config.mock_with :mocha  
end

def fixtures_dir
  File.expand_path(File.dirname(__FILE__) + '/migration_assist/fixtures')
end
