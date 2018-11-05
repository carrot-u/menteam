class AddUserToUserRole < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_roles, :user, foreign_key: true
  end
end
