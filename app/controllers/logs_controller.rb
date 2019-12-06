class LogsController < ApplicationController

    def index
        if @dive_site = DiveSite.find_by(id: params[:dive_site_id])
            @logs = @dive_site.logs
        else
            @logs = Log.all 
        end
    end

    def new
        if @dive_site = DiveSite.find_by(id: params[:dive_site_id])
            @log = @dive_site.logs.build
        else
            @log = Log.new
        end
    end
    
    def create
        @log = current_user.logs.build(log_params)
        if @log.save
            redirect_to log_path(@log)
        else
            @log.build_dive_site
            render :new 
        end
    end
    
    def show
        @log = Log.find_by(id: params[:id])
    end

    private

    def log_params
        params.require(:log).permit(:date, :remarks, :dive_buddy, :depth, :dive_time, :visibility, :user_id, :dive_site_id, dive_site_attributes: [:name] )
    end

end
