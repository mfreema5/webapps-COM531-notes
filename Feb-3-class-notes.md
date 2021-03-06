#Feb 3 - Class notes

Currently should understand:

* Strings
  * `"string"`
* Integer
  * `25`
* Float
  * `25.00`
* Array
  * `['larry','moe','curly']`
* Hash
  * `{ name: ' ' , foo: ' ' }`
* Class
  * `class car`
* Instantiation
  * `@car = Car.new`





&ldquo;Rails is a framework that runs on top of Ruby&rdquo;

##Model - View - Controller 

* View
  * HTML
  * CSS
  * JavaScript
* View ↔ Controller 
  * via HTTP
    * basic (default?) HTTP request is
      * GET request
    * as opposed 
      * POST request
      * PUT request (updates existing)
      * DELETE request
  * HTTP request are routed to Controller
    * Controller handles requests
    * often, in response Controller pushes new View
* Controller ↔ Model
  * Model handles data
    * Data in/out of database
* Model = Ruby class
* Controller = Ruby instance of class
* View = showing Ruby instance of class

----

* &ldquo;Fat models, and skinny controls&rdquo;

* CRUD 
  * Create
  * Read
  * Update
  * Delete


----

##Instant Rails app

```
rails new demo
cd demo
git init
git add .
git commit -m "Fresh."
rails server
```

Make an app:

```
$rails generate scaffold Story title:string author:string article:text 

      invoke  active_record
      remove    db/migrate/20150204010532_create_stories.rb
      create    db/migrate/20150204010756_create_stories.rb
   identical    app/models/story.rb
      invoke    test_unit
   identical      test/models/story_test.rb
       force      test/fixtures/stories.yml
      invoke  resource_route
       route    resources :stories
      invoke  scaffold_controller
       force    app/controllers/stories_controller.rb
      invoke    erb
       exist      app/views/stories
       force      app/views/stories/index.html.erb
   identical      app/views/stories/edit.html.erb
       force      app/views/stories/show.html.erb
   identical      app/views/stories/new.html.erb
       force      app/views/stories/_form.html.erb
      invoke    test_unit
       force      test/controllers/stories_controller_test.rb
      invoke    helper
   identical      app/helpers/stories_helper.rb
      invoke      test_unit
      invoke    jbuilder
       force      app/views/stories/index.json.jbuilder
       force      app/views/stories/show.json.jbuilder
      invoke  assets
      invoke    coffee
   identical      app/assets/javascripts/stories.coffee
      invoke    scss
   identical      app/assets/stylesheets/stories.scss
      invoke  scss
   identical    app/assets/stylesheets/scaffolds.scss
```

Examining what was created:

```
$cat db/migrate/20150204010756_create_stories.rb 

class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :author
      t.text :article

      t.timestamps null: false
    end
  end
end
```



```
$ rake db:migrate 

== 20150204010756 CreateStories: migrating ====================================
-- create_table(:stories)
   -> 0.0065s
== 20150204010756 CreateStories: migrated (0.0066s) ===========================
```

It maps object-logic to database-logic:

```
$ cat db/schema.rb 

# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150204010756) do

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.text     "article"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
```

BTW, Git ignores all the data:

```
$ cat .gitignore

# See https://help.github.com/articles/ignoring-files for more about ignoring files.
#
# If you find yourself ignoring temporary files generated by your text editor
# or operating system, you probably want to add a global ignore instead:
#   git config --global core.excludesfile '~/.gitignore_global'

# Ignore bundler config.
/.bundle

# Ignore the default SQLite database.
/db/*.sqlite3
/db/*.sqlite3-journal

# Ignore all logfiles and tempfiles.
/log/*
!/log/.keep
/tmp
```

Looking around inside app:

```
$ rake routes

    Prefix Verb   URI Pattern                 Controller#Action
   stories GET    /stories(.:format)          stories#index
           POST   /stories(.:format)          stories#create
 new_story GET    /stories/new(.:format)      stories#new
edit_story GET    /stories/:id/edit(.:format) stories#edit
     story GET    /stories/:id(.:format)      stories#show
           PATCH  /stories/:id(.:format)      stories#update
           PUT    /stories/:id(.:format)      stories#update
           DELETE /stories/:id(.:format)      stories#destroy
```







