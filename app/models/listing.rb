class Listing < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    has_many :applicants
    has_many :users, through: :applicants

end