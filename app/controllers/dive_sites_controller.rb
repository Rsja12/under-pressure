class DiveSitesController < ApplicationController

    def index
        @dive_sites = DiveSite.all 
    end
    
end
