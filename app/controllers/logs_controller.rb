class LogsController < ApplicationController

    def index
        @logs = Log.all 
    end

    def new
        @log = Log.new
    end

    # def create
    #     @log = Log.new(log_params)
    #     if @log.save
    #         redirect_to ''
    #     end
    # end

    private

    def log_params
        require(:log).permit(:date, :remarks, :dive_site_name, :dive_buddy, :depth, :dive_time, :visibility, :dive_number)
    end

end
