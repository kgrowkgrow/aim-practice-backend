class ScoreboardsController < ApplicationController

    def show
        scoreboard = Scoreboard.find_by_id(params[:id])
        render json: scoreboard
    end   

    def create   
        scoreboard = Scoreboard.create()
        render json: scoreboard 
    end

end
