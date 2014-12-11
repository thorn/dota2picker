class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :name
      t.string :short_name
      t.string :portrait_url

      t.timestamps
    end
  end
end
