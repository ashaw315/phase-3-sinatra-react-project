class User < ActiveRecord::Base
    has_many :reviews
    has_many :listings, through: :reviews
    
    has_many :applicants
    has_many :listings, through: :applicants
end