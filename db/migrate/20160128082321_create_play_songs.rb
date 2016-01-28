class CreatePlaySongs < ActiveRecord::Migration
  def change
    create_table :play_songs do |t|
      t.integer :song_id
      t.integer :play_list_id

      t.timestamps null: false
    end
  end
end
