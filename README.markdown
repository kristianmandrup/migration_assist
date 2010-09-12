# Migration Assistant

Assists in handling migrations, including generating migration files from a Thor Generator
The *Migration Assistant* includes specialized functionality for operating with *Active Record* migrations.

## Install

<code>gem install migration_assist</code>

## Usage

First you have to tell the gem where your Rails root directory is located so it can calculate the migrations dir from that for its operation.

Example:
<pre>
  Rails::Migration::Assist.rails_root_dir = Rails.root
</pre>  

A common use case for using this gem, is when you are creating code Generators that create Active Record migrations.
In this case you would add this Helper to your generator sth. like this

<pre>
require 'migration_assist'
require 'rails3_assist'

class MigrationGenerator < Rails::Generators::NamedBase 
  include Rails::Migration::Assist  
  include Rails::Assist::Migration # from rails3_assist
  
  ...
end
</pre>

In the above example we also included the migration helper from the *rails3_assist* gem, which adds some migration CRUD functionality to the mix.

### Class methods:

* migrations_list(dirname=nil)*

list of migrations

*first_migration_file: (name, dir=nil) - alias: *migration_exists?*

Get the first migration file matching a given name

*latest_migration_file: (dirname, file_name)*

Get the latest migration file matching a given name

*current_migration_number(dirname=nil)*

Return the highest migration number of the current migration files

*next_migration_number(dirname=nil)*

Often used to generate the number to prefix a new generated migration file

### Instance methods

*migration (name)*

Generate a new named migration using a template [name].erb to be found in a template source path (thor)

*reverse_migration! (migration_path=nil)*

Reverse a given migration, by switching the up and down methods and 
changing the migration name, fx from Add to Remove or Create to Drop.

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 Kristian Mandrup. See LICENSE for details.
