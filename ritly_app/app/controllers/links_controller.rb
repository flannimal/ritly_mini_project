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
	# random_token = SecureRandom.urlsafe_base64(nil, false)

	# def C2
 #    link = params.require(:link).permit(:url, :random_string)
 #    custom_string = params[:link][:random_string]
 #    full_link_url = complete_url(link[:url])

 #    if custom_string == ""
 #      random_string = SecureRandom.urlsafe_base64(10)
 #      @link = Link.create(url: full_link_url, random_string: random_string)
 #      redirect_to link_path(@link.id)
 #    elsif unique_code?(custom_string)
 #      @link = Link.create(url: full_link_url, random_string: custom_string)
 #      redirect_to link_path(@link.id)
 #    else
 #      @link = Link.new
 #      flash[:error] ="sorry! that link is in use!"
 #      render :new
 #    end




	def edit
		@link = Link.find(params[:id])
	end

	def update
		@link = Link.find(params[:id])
		@link.update link_params
		redirect_to link_params(@link)
	end

	def destroy
		Link.find(params[:id]).destroy
		redirect_to root_path
	end


private
	def link_params 
		params.require(:link).permit(:url, :random_string)
	end

end
