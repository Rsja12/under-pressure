class DiveSitesController < ApplicationController

    def index
        @dive_sites = current_user.dive_sites.uniq
    end
    
    def show
        @dive_site = DiveSite.find_by(id: params[:id])
    end
    
end
