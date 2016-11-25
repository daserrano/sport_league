class Recipe < ActiveRecord::Base
    has_many :histories
    has_one :user
    
    validates :recipe_name, presence: true, uniqueness: true
    validates :recipe, presence: true, uniqueness: true
     
end
