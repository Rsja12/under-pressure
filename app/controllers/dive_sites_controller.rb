class DiveSitesController < ApplicationController

    def index
        @dive_sites = current_user.dive_sites.uniq
    end
    
end
