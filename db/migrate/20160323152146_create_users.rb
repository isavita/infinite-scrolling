class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
