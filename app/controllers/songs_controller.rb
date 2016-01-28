class SongsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		render json: Song.all
	end

	def create
		song  = Song.new(song_params)

		if song.save
			render json: song
		end
	end

	def update
		song = Song.find(params[:id])

		if song.update_attributes(song_params)
			render json: song, status: 200
		end
	end

	def destroy
		song = Song.find(params[:id])
		if song.destroy
			head :no_content
		end
	end

	private
		def song_params
			params.require(:song).permit(:name)
		end
end
