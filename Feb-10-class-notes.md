#Feb 10 &ndash; Class notes

----

Fiddling git-config: set editor on OS X with TextWrangler `"edit --wait --resume"`

----

`$cat Gemfile`

`gem 'uglifier', '>= 1.3.0'`

Use at least version 1.3.0

`gem 'sass-rails', '~> 5.0'`

Uses any 5-release; no 4, no 6

`$ gedit Gemfile`

add:

```
# Use HAML for views
gem 'haml-rails', '~> 0.8'
```

Then:

```
$ bundle install

Fetching gem metadata from https://rubygems.org/..........
Resolving dependencies...
```

(Would it be worthwhile to link the shell history into the repository and track it?)


```
$ rails g scaffold Person name:string favorite_color:string
      invoke  active_record
      create    db/migrate/20150211010031_create_people.rb
      create    app/models/person.rb
      invoke    test_unit
      create      test/models/person_test.rb
      create      test/fixtures/people.yml
...
```

```
$ rake db:migrate

== 20150211010031 CreatePeople: migrating =====================================
-- create_table(:people)
   -> 0.0037s
== 20150211010031 CreatePeople: migrated (0.0038s) ============================
```

```
$ cat db/schema.rb] 
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

ActiveRecord::Schema.define(version: 20150211010031) do

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "favorite_color"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
```

----

This is going to make my brain melt:

```haml
- 5 + 5
```
evaluates the Ruby expression

```haml
= 5 + 5
```

evaluates teh Ruby expression, and display the result









