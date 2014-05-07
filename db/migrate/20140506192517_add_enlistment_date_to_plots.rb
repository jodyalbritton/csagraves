class AddEnlistmentDateToPlots < ActiveRecord::Migration
  def change
    add_column :plots, :enlistment_date, :string
    add_column :plots, :service_end_date, :string
    add_column :plots, :release_from_service, :string
    add_column :plots, :ancestry_com_url, :string
    add_column :plots, :county, :string
    add_column :plots, :birth_location, :string
    add_column :plots, :death_location, :string

  end
end
