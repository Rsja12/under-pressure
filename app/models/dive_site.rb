class DiveSite < ApplicationRecord
    has_many :logs, :dependent => :delete_all #figure out how to fix this
    has_many :users, through: :logs 


    validates :name, presence: true
    validates :name, uniqueness: true
    
end
