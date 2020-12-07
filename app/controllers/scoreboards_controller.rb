class ScoreboardsController < ApplicationController

    
    def index
        scoreboards = Scoreboard.all
        render json: scoreboards
    end
    
    def show
        scoreboard = Scoreboard.find_by_id(params[:id])
        render json: scoreboard, :include => {:users => {:only => :name}, :games => {:only => :score}}
    end   

    def create   
        scoreboard = Scoreboard.create()
        render json: scoreboard 
    end


end
