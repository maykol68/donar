class AddApiToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :Api, :string
  end
end
