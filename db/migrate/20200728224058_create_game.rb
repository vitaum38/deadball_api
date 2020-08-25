class CreateGame < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references   :home_team, foreign_key: { to_table: :teams }
      t.references   :away_team, foreign_key: { to_table: :teams }
      t.datetime     :start
      t.datetime     :end
      t.integer      :home_team_score
      t.integer      :away_team_score
      t.string       :status

      t.timestamps
    end
  end
end
