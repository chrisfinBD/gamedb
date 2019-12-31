class PagesController < ApplicationController
  def index
    #@games = Game.order(id: :desc).last(10)
    # We do not use last, because it will create an array object instead of a active record object which cannot chain on more active record actions to it
    @games = Game.order(created_at: :desc).limit(10)
  end
end
