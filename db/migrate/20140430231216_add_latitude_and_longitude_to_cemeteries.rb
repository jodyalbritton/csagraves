class AddLatitudeAndLongitudeToCemeteries < ActiveRecord::Migration
  def change
    add_column :cemeteries, :latitude, :float
    add_column :cemeteries, :longitude, :float
  end
end
