class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.text :email
      t.text :password
      t.text :name
      t.text :phone
      t.text :birthday
      t.integer :gender_type
      t.text :main_image

      t.timestamps
    end
  end
end
