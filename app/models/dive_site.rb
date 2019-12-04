class DiveSite < ApplicationRecord
    has_many :logs 
    has_many :users, through: :logs 

    validates :name, presence: true
    validates :name, uniqeness: true
    
end
