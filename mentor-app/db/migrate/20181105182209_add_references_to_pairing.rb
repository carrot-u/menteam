class AddReferencesToPairing < ActiveRecord::Migration[5.2]
  def change
    add_reference :pairings, :mentor, index: true
    add_foreign_key :pairings, :users, column: :mentor_id
    add_reference :pairings, :mentee, index: true
    add_foreign_key :pairings, :users, column: :mentee_id
    add_reference :pairings, :topic, index: true
    add_foreign_key :pairings, :topics, column: :topic_id
  end
end
