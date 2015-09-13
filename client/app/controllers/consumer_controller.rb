class ConsumerController < ApplicationController

	def index
		@blogs = Consumer.fetch
	end

	def show
		@blog = Consumer.fetch_blog(params[:id])
	end
end
