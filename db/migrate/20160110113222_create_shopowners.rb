class CreateShopowners < ActiveRecord::Migration[5.0]
  def change
    create_table :shopowners do |t|
      t.text :email
      t.text :password
      t.text :name
      t.text :phone

      t.timestamps
    end
  end
end
