class CreateCompletePuzzles < ActiveRecord::Migration[5.2]
  def change
    create_table :complete_puzzles do |t|
      t.integer :user_id
      t.integer :completePuzzle
      t.integer :completePuzzle, array: true, default: []

      t.timestamps
    end
  end
end
