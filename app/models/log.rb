class Log < ApplicationRecord
    belongs_to :user
    belongs_to :dive_site

    validates :date, presence: true
    validates :depth, presence: true
    validates :dive_buddy, presence: true
    validates :dive_time, presence: true
    validates :visibility, presence: true
    validates :remarks, presence: true
    validate :future?
    
    accepts_nested_attributes_for :dive_site, :reject_if => proc { |attributes| attributes[:name].blank? }

    def dive_site_attributes=(attributes = {})
        if attributes[:name].present?
            self.dive_site = DiveSite.find_or_create_by(attributes)
        end
    end

    def time
        self.date.strftime(" %b %e %Y")
    end

    def future?
        if self.date > Time.now
            errors.add(:date, "must be valid")
        end
    end
    
    # Add current_time class method

end
