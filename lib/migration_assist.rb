require 'require_all'

module Rails
  module Migration
    module Assist
    end
  end
end

require 'rails3_assist'
require_all File.dirname(__FILE__) + '/migration_assist'