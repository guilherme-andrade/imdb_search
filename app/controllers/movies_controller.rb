class MoviesController < ApplicationController
  def index
    if params[:query].present?
    	@results = PgSearch.multisearch(params[:query]).map do |element|
    		element.searchable
    	end
    else
      @results = Movie.all
    end
  end
end