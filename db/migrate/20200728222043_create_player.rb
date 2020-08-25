class CreatePlayer < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string  :name
      t.string  :shirt_name
      t.date    :birthdate
      t.float   :base_avg
      t.string  :main_hand

      t.timestamps
    end
  end
end
