class Log < ApplicationRecord
    belongs_to :user
    belongs_to :dive_site
    
    accepts_nested_attributes_for :dive_site

    def dive_site_attributes=(attributes = {})
        self.dive_site = DiveSite.find_or_create_by(attributes)
    end

    validates :date, presence: true
    validates :depth, presence: true
    validates :dive_buddy, presence: true
    validates :dive_time, presence: true
    validates :visibility, presence: true
    validates :remarks, presence: true

end
