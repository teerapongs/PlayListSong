class Song < ActiveRecord::Base
	has_many :play_songs
	has_many :play_lists, through: :play_songs
end
