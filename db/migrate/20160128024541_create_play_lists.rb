class CreatePlayLists < ActiveRecord::Migration
  def change
    create_table :play_lists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
