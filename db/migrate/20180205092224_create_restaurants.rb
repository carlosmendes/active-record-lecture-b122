# this will change the schema of the DB
# adding restaurants table
# id -> default option
# name
# address
# created_at
# updated_at
# to run migrations
# -> rake db:migrate

class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string    :name
      t.string    :address
      t.timestamps # add 2 columns, `created_at` and `updated_at`
      # t.datetime :created_at
      # t.datetime :updated_at
    end
  end
end
