class StocksController < ApplicationController

	def register
		current_user.stocks << Stock.find(params[:id])
		redirect_to :back
	end

	def show
		@stock = Stock.find(params[:id])
	end
end
