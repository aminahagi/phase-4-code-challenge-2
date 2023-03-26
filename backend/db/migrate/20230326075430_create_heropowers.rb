class CreateHeropowers < ActiveRecord::Migration[7.0]
  def change
    create_table :heropowers do |t|
      t.string :strength
      t.references :hero, null: false, foreign_key: true
      t.references :power, null: false, foreign_key: true

      t.timestamps
    end
  end
end
