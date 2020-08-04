class CreateFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :follows do |t|
      t.timestamps
      t.belongs_to :user
      t.belongs_to :followed_user
      t.index [:user_id, :followed_user_id], unique: true
    end
  end
end
