class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :rank
      t.string :birth_date
      t.string :death_date
      t.references :cemetery, index: true
      t.references :created_by, index: true
      t.string :cemetery_name
      t.boolean :approved
      t.string :unit
      t.text :description
      t.string :spouse
      t.string :mother
      t.string :father
      t.string :find_a_grave
      t.string :fold_3_url
      t.string :plot
      t.string :scv_id
      t.timestamps
    end
  end
end
