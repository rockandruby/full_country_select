# FullCountrySelect
Gems adds dynamic functionality for 'city-state' gem. For example, you choose
some country and automatically you receive all states for that country, then
you choose state and receive all cities for that state using ajax.
All databases are taken from MaxMind.

## Installation
Add this line to your Rails application's Gemfile:

```ruby
gem 'full_country_select'
```

And then execute:
```bash
$ bundle
```
Then you should run generator **rails g full_country_select:install** which will add
routes, helpers and assets to your app.
You should define root in your routes to work generator properly or you can take code
from generator and insert it manually to proper files.

Or install it yourself as:
```bash
$ gem install full_country_select
```

## Usage
Your form should include the following params and ids: :country, :state, :city.
For example(search form):

    = form_tag(some_path) do

        = select_tag(:country, options_for_select(get_countries),{class: 'form-control', include_blank: true})

        = select_tag(:state, {}, {class: 'form-control'})

        = select_tag(:city, {}, {class: 'form-control'})

If you want to use country select for objects and to get selected one from db, you should do like that:

    = form_for @object do |f|

        = f.select :country, get_countries, {},  id: 'country'

        = f.select :state, selected_state(@object), {}, id: 'state'

        = f.select :city, selected_city(@object), {}, id: 'city'

You have the following helpers:  get_countries - returns countries list, selected_state and
selected_city - helpers that require your object and return selected value. Of course, your object
should include fields: country(string), state(string), city(integer).

## Example
[link to Example!] (https://jobbber.herokuapp.com/jobs)
