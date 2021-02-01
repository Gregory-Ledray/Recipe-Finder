class CreateDiscovers < ActiveRecord::Migration[6.1]
  def change
    create_table :discovers do |t|

      t.timestamps
    end
  end
end
