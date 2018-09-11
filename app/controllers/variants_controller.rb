class VariantsController < ApplicationController
#	before_action :set_variant, only: [:show, :edit, :update, :destroy]

	# GET /variants
	# GET /variants.json
	def index
		@variants = Variant.all
		@variants = @variants.where(project: params[:project]) if params[:project].present?
		@variants = @variants.where(hkle: params[:hkle]) if params[:hkle].present?
		@variants = @variants.where(quality: params[:quality]) if params[:quality].present?
		@variants = @variants.where(modification: params[:modification]) if params[:modification].present?
		@variants = @variants.where(chromosome: params[:chromosome]) if params[:chromosome].present?
		@variants = @variants.where(direction: params[:direction]) if params[:direction].present?
		@variants = @variants.where(prepost: params[:prepost]) if params[:prepost].present?
		@variants = @variants.where(subject: params[:subject]) if params[:subject].present?

#		@variants = @variants.where(reference: params[:reference]) if params[:reference].present?
#		@variants = @variants.where(chromosome: params[:chromosome]) if params[:chromosome].present?
#		@variants = @variants.where(sequence: params[:sequence]) if params[:sequence].present?
#		params[:percent_eq] = 90 if params[:percent_eq].blank?
#		@variants = @variants.where(
#			Variant.arel_table[:percent_eq].gteq(params[:percent_eq]))
#		@variants = @variants.where(
#			Variant.arel_table[:percent_ed].lteq(params[:percent_ed])) if params[:percent_ed].present?

		@variants = @variants.paginate(
			:per_page => params[:per_page]||50,
			:page		  => valid_find_page
		)
	end

#private
#
#	def valid_find_page
#		#	0 is apparently bad.
#		( !params[:page].blank? && ( params[:page].to_i > 0 ) ) ? params[:page] : 1
#	end
#
end
