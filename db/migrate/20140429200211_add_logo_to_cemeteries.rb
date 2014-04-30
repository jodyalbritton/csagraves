class AddLogoToCemeteries < ActiveRecord::Migration
  def self.up
    add_attachment :cemeteries, :logo
  end

  def self.down
    remove_attachment :cemeteries, :logo
  end
end
