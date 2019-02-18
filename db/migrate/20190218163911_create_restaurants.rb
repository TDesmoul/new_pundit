class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.boolean :published, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
