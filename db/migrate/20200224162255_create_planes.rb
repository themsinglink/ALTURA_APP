class CreatePlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :planes do |t|
      t.integer :capacity
      t.string :location
      t.string :name
      t.string :pilot_name
      t.float :rate
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
