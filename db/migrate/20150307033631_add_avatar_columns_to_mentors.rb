class AddAvatarColumnsToMentors < ActiveRecord::Migration
  def self.up
    add_attachment :mentors, :avatar
  end

  def self.down
    remove_attachment :mentors, :avatar
  end
end
