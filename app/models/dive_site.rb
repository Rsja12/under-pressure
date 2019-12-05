class DiveSite < ApplicationRecord
    has_many :logs, dependent: :destroy
    has_many :users, through: :logs 


    validates :name, presence: true
    validates :name, uniqueness: true
    
end
