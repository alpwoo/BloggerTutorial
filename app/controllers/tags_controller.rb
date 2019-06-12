class TagsController < ApplicationController

	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
   @tag = Tag.find(params[:id])
   flash.notice = "Tag '#{@tag}' was deleted!"
   @tag.destroy
   redirect_to tags_path
	end

	before_action :require_login, only: [:destroy]

end
