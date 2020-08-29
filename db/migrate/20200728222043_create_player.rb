class CreatePlayer < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string  :name, index: true
      t.string  :shirt_name, index: true
      t.date    :birthdate
      t.float   :base_avg
      t.float   :era
      t.float   :fielding
      t.string  :main_hand
      t.string  :position

      t.timestamps
    end
  end
end
