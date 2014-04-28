class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def show
		@link = Link.find(params[:id])
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.create link_params
		redirect_to link_path(@link)
	end

	def edit
		@link = Link.find(params[:id])
	end

	def update
		@link = Link.find(params[:id])
		@link.update link_params   #link_params is a method defined below in private
		redirect_to link_params(@link)
		#links/:id(.:format)      links#update
	end

	def redirecty
		@link = Link.find_by random_string: params[:rando]
		if @link
			redirect_to @link.url
		else
			redirect_to root_path
		end
	end

	def destroy
		Link.find(params[:id]).destroy
		redirect_to root_path
	end

#-------------------------------------------------------------------

private
	def link_params 
		params.require(:link).permit(:url, :random_string)
	end

end
