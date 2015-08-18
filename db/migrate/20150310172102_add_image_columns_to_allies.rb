class AddImageColumnsToAllies < ActiveRecord::Migration
  def self.up
    add_attachment :allies, :image
  end

  def self.down
    remove_attachment :allies, :image
  end
end