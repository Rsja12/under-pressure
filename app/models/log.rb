class Log < ApplicationRecord
    belongs_to :user
    belongs_to :dive_site
    
    accepts_nested_attributes_for :dive_site

    def dive_site_attributes=(attributes = {})
        self.dive_site = DiveSite.find_or_create_by(attributes)
    end

end
