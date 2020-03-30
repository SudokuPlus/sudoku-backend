class CreateIncompletePuzzles < ActiveRecord::Migration[5.2]
  def change
    create_table :incomplete_puzzles do |t|
      t.integer :user_id
      t.integer :incompletePuzzle, array: true, default: []

      t.timestamps
    end
  end
end
