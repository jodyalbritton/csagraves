class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :title
      t.string :about
      t.integer :imageable_id
      t.string :imageable_type
      t.string :photo
      t.references :user, index: true

      t.timestamps
    end
  end
end
