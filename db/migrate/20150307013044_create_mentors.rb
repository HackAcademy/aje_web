class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :lastname
      t.string :age
      t.text :description
      t.string :email
      t.string :business
      t.string :facebook
      t.string :twitter
      t.string :instagram

      t.timestamps null: false
    end
  end
end
