class CreateMatchups < ActiveRecord::Migration
  def change
    create_table :matchups do |t|
      t.integer :first_hero_id
      t.integer :second_hero_id
      t.decimal :advantage

      t.timestamps
    end
    add_index :matchups, :first_hero_id
    add_index :matchups, :second_hero_id
  end
end
