class CreateFlashes < ActiveRecord::Migration
  def change
    create_table :flashes do |t|
      t.integer :user_1_id
      t.string :location_name
      t.integer :match_id
      t.integer :user2_id

      t.timestamps

    end
  end
end
