class GamesController < ApplicationController

  def index
    @games = Game.all.order(id: :asc)
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to(games_path)
    else
      # if nothing was defined here, the render would reuse create
      # When using render the params is preserved. When using redirect the forms values are reset for a new session. Also whenever we change action methods
      render(:new)
    end
  end

  def new
    @consoles = consoles
    @ratings = %w(Everyone Teen Mature Adult)
    @genres = genres 
    @game = Game.new
  end

  def edit
    @consoles = consoles
    @ratings = %w(Everyone Teen Mature Adult)
    @genres = genres 
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to(games_path)
    else
      render(:edit)
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to(games_path)
  end

  private

  def game_params
    params.require(:game).permit(:body)
  end
  
  def consoles
    Game.select("DISTINCT console").order(console: :asc).map do |game|[game["console"], game["console"]] end
  end

  def genres
  Game.select("DISTINCT genre").order(genre: :asc).map do |game|[game["genre"], game    ["genre"]] end
  end

end
