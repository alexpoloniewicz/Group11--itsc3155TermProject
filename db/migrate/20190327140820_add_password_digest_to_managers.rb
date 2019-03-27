class AddPasswordDigestToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :password_digest, :string
  end
end
