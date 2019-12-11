class LogsController < ApplicationController
    before_action :set_log, except: [:index, :new, :create]

    def index
        if @dive_site = DiveSite.find_by(id: params[:dive_site_id])
            @logs = @dive_site.logs
        else
            @logs = current_user.logs  
        end
    end

    def new
        if @dive_site = DiveSite.find_by(id: params[:dive_site_id])
            @log = @dive_site.logs.build
        else
            @log = Log.new
            @log.build_dive_site
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
    end

    def edit
    end

    def update
        @log.update(log_params)
        redirect_to log_path(@log)
    end

    def destroy
        @log.destroy 
        redirect_to logs_path
    end

    def vis
        @logs = Log.good_vis 
    end
    
    private

    def set_log
        @log = Log.find_by(id: params[:id])
    end

    def log_params
        params.require(:log).permit(:date, :remarks, :dive_buddy, :depth, :dive_time, :visibility, :user_id, :dive_site_id, dive_site_attributes: [:name] )
    end

end
