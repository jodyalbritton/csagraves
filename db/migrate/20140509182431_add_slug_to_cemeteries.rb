class AddSlugToCemeteries < ActiveRecord::Migration
  def change
    add_column :cemeteries, :slug, :string
    add_index :cemeteries, :slug, unique: true
  end
end
