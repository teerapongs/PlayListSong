class PlaySongsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		play_song = Play_Song.all
	end

	def create
		play_song = Play_Song.new(
			song_id: params[:song_id],
			play_list_id: params[:play_list_id]	
		)
		if play_song.save
			render json: play_song
		end
	end

	def update
		play_song = Play_Song.find(params[:id])

		if play_song.update.attributes(
			song_id: params[:song_id],
			play_list_id: params[:play_list_id])			
			render json: play_song, status: 200
		end
	end

	def destroy
		play_song = Play_Song.find(params[:id])
		if play_song.destroy
			head :no_content
		end
	end
end
