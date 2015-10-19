class AddUrlColumnToAllies < ActiveRecord::Migration
  def change
    add_column :allies, :url, :string
  end
end
