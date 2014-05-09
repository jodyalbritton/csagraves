class AddSlugToPlots < ActiveRecord::Migration
  def change
    add_column :plots, :slug, :string
    add_index :plots, :slug, unique: true
  end
end
