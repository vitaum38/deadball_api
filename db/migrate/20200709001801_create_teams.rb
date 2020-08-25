class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string  :name
      t.string  :acronym
      t.string  :logo_url
      t.jsonb   :mock_lineup

      t.timestamps
    end
  end
end
