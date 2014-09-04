class AddCountyToCemeteries < ActiveRecord::Migration
  def change
    add_column :cemeteries, :county, :string
  end
end
