class ApplicationController < ActionController::Base

	helper_method :valid_per_page

private

	def valid_per_page
		#	0 is apparently bad.
		#( !params[:per_page].blank? && ( params[:per_page].to_i > 0 ) ) ? params[:per_page] : 100
		params[:per_page].present? ? params[:per_page].to_i : 50
	end

	def valid_find_page
		#	0 is apparently bad.
		( !params[:page].blank? && ( params[:page].to_i > 0 ) ) ? params[:page] : 1
	end

end
