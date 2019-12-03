class LogsController < ApplicationController

    def index
        @logs = Log.all 
    end

    def show
        @log = Log.find(params[:id])
    end

    def new
        @log = Log.new
    end

    def create
        @log = Log.new(log_params)
        if @log.save
            redirect_to log_path(@log)
        else
            render :new 
        end
    end

    private



    def log_params
        params.require(:log).permit(:date, :remarks, :dive_site_name, :dive_buddy, :depth, :dive_time, :visibility, :user_id, :dive_site_id)
    end

end
