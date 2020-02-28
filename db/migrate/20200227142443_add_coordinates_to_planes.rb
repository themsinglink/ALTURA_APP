class AddCoordinatesToPlanes < ActiveRecord::Migration[5.2]
  def change
    add_column :planes, :latitude, :float
    add_column :planes, :longitude, :float
  end
end
