class RemoveStateFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :state, :string
  end
end
