require 'spec_helper'

# RSpec::Generator.debug = true
# 
# require_generator :migration
# 
# describe 'migration_generator' do
#   use_orm :active_record
#   use_helpers :migration, :helper
#   
#   before :each do              
#     setup_generator 'migration_generator' do
#       tests MigrationGenerator
#     end        
#     remove_migration :create_users    
#   end
# 
#   after :each do
#   end
#     
#   it "should generate create_user migration" do    
#     with_generator do |g|
#       g.run_generator :create_users.args
#       g.should generate_migration :create_users do |content|
#         content.should have_migration :create_users do |klass|
#           klass.should have_up do |up|
#             up.should have_create_table :users do |user_tbl|
#               user_tbl.should have_columns :name => :string, :age => :integer, :admin => :boolean
#               user_tbl.should_not have_timestamps              
#             end
#           end
# 
#           klass.should have_down do |up|
#             up.should have_drop_table :users
#           end
#         end
#       end
#     end
#   end
# end
# 
# 
# 
