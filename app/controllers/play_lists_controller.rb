class PlayListsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		render json: PlayList.all
	end

	def create
		play_list = PlayList.new(play_list_params)
		
		if play_list.save
			render json: play_list
		end
	end

	def update
		play_list = PlayList.find(params[:id])
		
		if play_list.update_attributes(play_list_params)
			render json: play_list, status: 200
		end
	end

	def destroy
		play_list = PlayList.find(params[:id])
		
		if play_list.destroy
			head :no_content
		end
	end

	private
		def play_list_params
			params.require(:play_list).permit(:name)
		end
end