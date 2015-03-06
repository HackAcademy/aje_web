class CreateAfiliates < ActiveRecord::Migration
  def change
    create_table :afiliates do |t|
      t.string :name
      t.string :lastname
      t.string :ci,          null: false, default: ""
      t.string :email,       null: false, default: ""
      t.string :phone
      t.string :business


      t.timestamps null: false
    end
    add_index :afiliates, :ci,             unique: true
    add_index :afiliates, :email,             unique: true

  end
end
