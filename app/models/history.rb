class History < ActiveRecord::Base
     has_one :user
     has_one :recipe
     validates :idUser, presence: true, uniqueness: true
end
