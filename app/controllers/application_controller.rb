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
    listing.to_json(include: { 
      reviews: {only: [:comment, :rating], include: { user: { only: [:name, :password, :position, :user_despcription, :skills] }}},
      applicants: { include: {user: { only: [:name, :password, :position, :user_despcription, :skills] }} }
    })
  end

  # get "/listings/applicants/:id" do
  #   applicants = Applicant.find(params[:id])
  #   applicants.to_json
  # end

  post '/listings' do 
    listing = Listing.create(job_title: params[:job_title], job_description: params[:job_description], hourly_rate: params[:hourly_rate], start_date: params[:start_date], end_date: params[:end_date], hired: params[:hired])
    listing.to_json
  end

  delete '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.destroy
    {message: "Listing Deleted"}.to_json
  end

  patch '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.update(job_title: params[:job_title], job_description: params[:job_description], hourly_rate: params[:hourly_rate], start_date: params[:start_date], end_date: params[:end_date], hired: params[:hired]).to_json
    # listing.to_json
  end

  # get 'Listin/:id' do
  #   applicants = Applicant.find(params[:id])
  #   applicants.to_json
  # end

  # Users
  get "/users" do
    User.all.to_json
  end

  # post '/users' do 
  #   user = User.create(name: params[:name], password: params[:password], position: params[:position], user_despcription: params[:user_despcription], skills: params[:skills], favorite_quote: params[:favorite_quote], favorite_game: params[:favorite_game])
  #   user.to_json(include: :listings)
  #   # applicant = Applicant.create(user_id: user[:id], listing_id: listing[:id])
  #   applicant = Applicant.create(user_id: user[:id], listing_id: listing[:id])
   
  # end

  post '/users' do 
    user = User.create(name: params[:name], password: params[:password], position: params[:position], user_despcription: params[:user_despcription], skills: params[:skills], favorite_quote: params[:favorite_quote], favorite_game: params[:favorite_game])
    user.to_json({include: :listings})
    applicant = Applicant.create(user_id: user[:id], listing_id: listing[:id])
  end

  # @user.listings << Listing.find(params[:id])

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
