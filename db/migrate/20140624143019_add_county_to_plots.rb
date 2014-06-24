class AddCountyToPlots < ActiveRecord::Migration
  def change
    add_column :plots, :enlistment_location, :string
    add_column :plots, :disposition, :string
  end
end
