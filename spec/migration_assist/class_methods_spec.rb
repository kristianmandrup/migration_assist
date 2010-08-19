require 'spec_helper'
require 'rails'

class TestGenerator
  include Rails::Migration::Assist
end

describe 'Migration Assist' do
  let(:dir) { fixtures_dir }  
  let(:generator) { TestGenerator.new }  

  before :each do              
  end

  after :each do
  end

  describe '#migration_lookup_at' do
    it "should return 4 migrations" do    
      generator.class.migration_lookup_at(dir).should have(4).items
    end
  end

  describe '#migration_exists?' do
    it "should verify migration 'a' exists" do    
      generator.class.migration_exists?(dir, 'migration_a').should include('001_migration_a.rb') 
    end

    it "should verify migration 'c' exists" do          
      generator.class.migration_exists?(dir, 'migration_c').should include('004_migration_c.rb') 
    end
  end

  describe '#first_migration_file' do
    it "should find first migration 'a'" do    
      generator.class.first_migration_file(dir, 'migration_a').should include('001_migration_a.rb')       
    end
  end

  describe '#latest_migration_file' do
    it "should lookup latest migration 'a' " do    
      generator.class.latest_migration_file(dir, 'migration_a').should include('003_migration_a.rb')             
    end

    it "should lookup latest migration 'b' " do          
      generator.class.latest_migration_file(dir, 'migration_b').should include('002_migration_b.rb')       
    end
  end

  describe '#current_migration_number' do
    it "should find current migration number 4" do    
      generator.class.current_migration_number(dir).should be 4
    end
  end

  describe '#next_migration_number' do    
    it "should find next migration number 5" do               
    end
  end
end
