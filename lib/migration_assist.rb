require 'require_all'

module Rails
  module Migration
    module Assist
    end
  end
end

require_all File.dirname(__FILE__) + '/migration_assist'