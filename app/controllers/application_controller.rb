class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # Listings
  get "/listings" do
    Listing.all.to_json
  end

  get "/listings/:id" do
    listing = Listing.find(params[:id])
    listing.to_json(include: { reviews: {only: [:comment, :rating], include: {
       user: { only: [:name, :password, :position, :user_despcription, :skills] }
       } }
    })
  end

  # Users
  get "/users" do
    User.all.to_json
  end

  get "/listing/:id" do
    Listing.find(params[:id]).to_json
  end


  get "/reviews" do
    Review.all.to_json
  end

  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json
  end



end
