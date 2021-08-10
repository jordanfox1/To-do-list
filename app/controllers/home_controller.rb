class HomeController < ApplicationController

	def clear
		@clear = List.where(:completed => true).destroy_all
		redirect_to lists_url, notice: "Marked items were successfully cleared!"
	end

	def clearall
		redirect_to lists_url, notice: "All items were successfully cleared!"
		@clearall = List.all.destroy_all
	end

end