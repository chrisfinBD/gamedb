class SearchesController < ApplicationController
  def index
    # Look at what we have available
    #raise params.inspect
    @query = params[:q]
    @games  = Game.where("title ILIKE ?", "%#{@query}%").order(created_at: :desc)
  end
end
