class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games, only: [:score, :id], :include => {:user => {:only => :name}}
    end

    def show
        game = Game.find_by_id(params[:id])
        render json: game
    end
     

    def create   
        
        game = Game.create(create_params)
        render json: game 
    end
    
    def update 
        game = Game.find_by_id(params[:id])
        game.update(score: params[:score])
        render json: game
    end

    def clear_board
        
        Game.destroy_all
        render json: {message: "Successfully Deleted"}
    end

    private 

    def create_params 
        params.require(:game).permit(:score, :user_id, :scoreboard_id)
    end

end 
