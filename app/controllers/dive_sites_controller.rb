class DiveSitesController < ApplicationController

    def new
        @dive_site = DiveSite.new
    end

    def create
        @dive_site = DiveSite.new(dive_site_params)
        @dive_site.save
    end

    private

    def dive_site_params
        params.require(:dive_site).permit(:name)
    end

end
