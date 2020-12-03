class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games
    end

    def show
        game = Game.find_by_id(params[:id])
        render json: game
    end
     

    def create   
        
        game = Game.create(create_params)
        render json: game 
    end

    private 

    def create_params 
        params.require(:game).permit(:score, :user_id, :scoreboard_id, :game)
    end


end
