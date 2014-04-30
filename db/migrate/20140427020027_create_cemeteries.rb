class CreateCemeteries < ActiveRecord::Migration
  def change
    create_table :cemeteries do |t|
      t.string :name
      t.string :address
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zip
      t.string :url
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
