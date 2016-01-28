class PlayList < ActiveRecord::Base
	has_many :play_songs
	has_many :songs, through: :play_songs
end
