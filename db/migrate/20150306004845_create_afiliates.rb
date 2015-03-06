class CreateAfiliates < ActiveRecord::Migration
  def change
    create_table :afiliates do |t|
      t.string :name
      t.string :lastname
      t.string :CI
      t.string :email
      t.string :phone
      t.string :business

      t.timestamps null: false
    end
  end
end
