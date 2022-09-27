# E3_IDS Despachos

## Rails Commands
 - Rails Terminal -> rails c
 - Create Model example -> `rails g model Customer first_name:string last_name:string email:string`
 - Create Reference example -> `rails g migration AddEventVenueRefToEvent event_venue:references`
 - Create Controller example -> `rails g scaffold_controller event`

## Rails Tags
 - Use ruby code in HTML tag -> `<% %>`
 - Show information in HTML -> `<%= %>`

## Rails Model Relation Examples
 - belongs_to :event_venue, optional:true
 - add_reference :events, :event_venue, null: false, foreign_key: true
 - has_and_belongs_to_many :event

## Rails DB Commands
 - rails db:migrate
 - rails db:drop
 - rails db:setup
 - rails db:reset
 - rails db:seed
 - rails db:populate_fake_data

## Rails Important Files/Folders
 - Routes -> config/routes.rb
 - Models Folder -> app/models/
 - Views Folder -> app/views/
 - Controllers Folder -> app/controllers/
 - JS Folder -> app/javascript/

### Special Cases
 - Creating a singular model, you will have to modify `config/initializers/inflections.rb` and add something like `ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.uncountable "shopping_cart"
  inflect.uncountable "ShoppingCart"
end`
