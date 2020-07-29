class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :owner
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :breed
      t.string :size
      t.integer :age
      t.string :city
      t.string :state
      


      t.timestamps
    end
  end
end
