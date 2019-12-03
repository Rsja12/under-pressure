class LogsController < ApplicationController

    def index
        @logs = Log.all 
    end

    def new
        @log = Log.new
    end

    # def create
        
    # end

    # private

    # def log_params
    #     require(:log).permit()
    # end
end
