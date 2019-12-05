class LogsController < ApplicationController

    def index
        if @dive_site = DiveSite.find_by(id: params[:dive_site_id])
            @logs = @dive_site.logs
            # byebug
        else
            @logs = Log.all 
        end
    end

    def show
        @log = Log.find(params[:id])
    end

    def new
        @log = Log.new
        @log.build_dive_site 
    end

    def create
        # byebug
        @log = Log.new(log_params)
        @log.user_id = current_user.id 
        if @log.save
            redirect_to log_path(@log)
        else
            @log.build_dive_site
            render :new 
        end
    end

    private

    def log_params
        params.require(:log).permit(:date, :remarks, :dive_buddy, :depth, :dive_time, :visibility, :user_id, :dive_site_id, dive_site_attributes: [:name] )
    end

end
