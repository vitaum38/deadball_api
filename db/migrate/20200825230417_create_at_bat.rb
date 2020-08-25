class CreateAtBat < ActiveRecord::Migration[5.2]
  def change
    create_table :at_bats do |t|
      t.references :pitcher, foreign_key: { to_table: :players }, null: false
      t.references :batter, foreign_key: { to_table: :players }, null: false
      t.references :game, foreign_key: true, null: false
      t.references :inning, foreign_key: true, null: false
      t.references :a_team, foreign_key: { to_table: :teams }, null: false
      t.references :d_team, foreign_key: { to_table: :teams }, null: false

      t.integer :balls
      t.integer :strikes
      t.integer :runs
      t.string :outcome

      t.timestamps
    end
  end
end
