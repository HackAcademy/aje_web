class CreateAllies < ActiveRecord::Migration
  def change
    create_table :allies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
