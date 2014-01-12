class AddPasswordAndRoleDigestToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    add_column :users, :role, :string
  end
end
