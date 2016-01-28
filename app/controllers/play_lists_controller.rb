class PlayListsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		render json: Play_List.all
	end

	def show
		play_list = Play_List.find(params[:id])
	end

	def create
		play_list = Play_List.new(play_list_params)
		if play_list.save
			render json: play_list, status: :createed, location: play_list
		end
	end

	def update
		play_list = Play_List.find(params[:id])
		if play_list.update_attributes(play_list_params)
			render json: play_list, status: 200
	end

	def destroy
		play_list = Play_List.find(params[:id])
		if play_list.destroy
			head :no_content
		end
	end

	private
		def play_list_params
			params.require(:play_list).permit(:name)
		end
	end
end
