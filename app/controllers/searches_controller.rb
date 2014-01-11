class SearchesController < ApplicationController
  def show
    term = "##{params[:id]}"
    @search_term = term
    @results = Searcher.new(term)
  end

  def new
  end
  
  def create
    term = params[:search][:search_term].gsub(/^#(.*)/, '\1')
    redirect_to search_path(term)
  end
end
