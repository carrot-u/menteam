class AddTopicToUserRole < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_roles, :topic, foreign_key: true
  end
end
