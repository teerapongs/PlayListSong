class PlaySong < ActiveRecord::Base
	belongs_to :play_lists
	belongs_to :song
end
