class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.binary :image
      t.text :short_description
      t.text :ingredient
      t.text :instructions
      t.text :long_description
      t.integer :license_status

      t.timestamps
    end
  end
end
