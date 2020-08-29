class CreateHalfInning < ActiveRecord::Migration[5.2]
  def change
    create_table :half_innings do |t|
      t.integer :number
      t.string  :position
      t.integer :runs
      t.integer :outs

      t.references :game, foreign_key: true, null: false
      t.references :a_team, foreign_key: { to_table: :teams }, null: false
      t.references :d_team, foreign_key: { to_table: :teams }, null: false

      t.timestamps
    end
  end
end
