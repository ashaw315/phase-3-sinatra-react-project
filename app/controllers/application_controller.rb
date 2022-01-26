class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # Listings
  get "/listings" do
    Listing.all.to_json
  end

  get "/listings/:id" do
    listing = Listing.find(params[:id])
    puts listing
    listing.to_json(include: { reviews: {only: [:comment, :rating], include: {
       user: { only: [:name, :password, :position, :user_despcription, :skills] }
       } }
    } )
  end

  post '/listings' do 
    listing = Listing.create(job_title: params[:job_title], job_description: params[:job_description], hourly_rate: params[:hourly_rate], start_date: params[:start_date], end_date: params[:end_date], hired: params[:hired])
    listing.to_json
  end

  delete '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.destroy
    {message: "Listing Deleted"}.to_json
  end
  # patch '/listing/:id' do
  #   listing = Listing.find(params[:id])
  #   listing.update()


  # get 'Listin/:id' do
  #   applicants = Applicant.find(params[:id])
  #   applicants.to_json
  # end

  # Users
  get "/users" do
    User.all.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  # Reviews
  get "/reviews" do
    Review.all.to_json
  end

  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json
  end



end
