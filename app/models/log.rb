class Log < ApplicationRecord
    belongs_to :user
    belongs_to :dive_site
    
    accepts_nested_attributes_for :dive_site

end
