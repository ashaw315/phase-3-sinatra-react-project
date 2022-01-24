puts "🌱 Seeding spices..."

# Seed your database here

puts "creating users..."

user1 = User.create(name: "Alex Weaver", password: "12345", position: "Art Handler", user_despcription: "I love handling delicate art!", skills: "carpentry, leveling")
user2 = User.create(name: "Adam Shaw", password: "12345", position: "Artist", user_despcription: "I love making art, and I know how to hang it!", skills: "painting, leveling")
user3 = User.create(name: "Ryan Reynolds", password: "blake", position: "Actor", user_despcription: "I am an actor, so I will do any job if you pay me.", skills: "laughing, crying, clown")
user4 = User.create(name: "Jennifer Lopez", password: "12345", position: "Jack-of-all-trades", user_despcription: "I can do and fix anything", skills: "If it exits I know how to do it, leveling")
user5 = User.create(name: "Link", password: "zelda", position: "Swordsman", user_despcription: "Great at mowing down grass", skills: "lawn care, hookshot, archery")

puts "creating listings..."

listing1 = Listing.create(job_title: "The Whitney", job_description: "Art Handling", hourly_rate: 30, start_date: , end_date:, created_at:, updated_at:)
listing2 = Listing.create(job_title: "MOMA", job_description: "Art Handling", hourly_rate: 28, start_date: , end_date:, created_at:, updated_at:)
listing3 = Listing.create(job_title: "Sud n Soak Car Wash", job_description: "Washing my car", hourly_rate: 30, start_date: , end_date:, created_at:, updated_at:)
listing4 = Listing.create(job_title: "Frontend Dev at high profile Tech startup", job_description: "Building a React application", hourly_rate: 25, start_date: , end_date:, created_at:, updated_at:)
listing5 = Listing.create(job_title: "Dallas Cowboys", job_description: "Mowing a Lawn", hourly_rate: 22, start_date: , end_date:, created_at:, updated_at:)
listing6 = Listing.create(job_title: "Furry Friends Animal Shelter", job_description: "Dog walking", hourly_rate: 20, start_date: , end_date:, created_at:, updated_at:)
listing7 = Listing.create(job_title: "Private Home", job_description: "Carpentry", hourly_rate: 25, start_date: , end_date:, created_at:, updated_at:)
listing8 = Listing.create(job_title: "Toddler Daycare", job_description: "Babysitting", hourly_rate: 50, start_date: , end_date:, created_at:, updated_at:)
listing9 = Listing.create(job_title: "Untitled movie project", job_description: "Starring in blockbuster film", hourly_rate: 27, start_date: , end_date:, created_at:, updated_at:)

puts "creating reviews..."

review1 = Review.create(comment: "This place was great! Paid on time.", rating: 8, user_id: user3.id, listing_id: listing7.id)
review2 = Review.create(comment: "Terrible experience!", rating: 2, user_id: user4.id, listing_id: listing2.id)
review3 = Review.create(comment: "Bad. Just Bad.", rating: 2, user_id: user1.id, listing_id: listing9.id)
review4 = Review.create(comment: "Loved working here. Hoping for fulltime position soon!.", rating: 10, user_id: user2.id, listing_id: listing3.id)
review5 = Review.create(comment: "I can't belive this place is still in business.", rating: 1, user_id: user4.id, listing_id: listing6.id)
review6 = Review.create(comment: "It was okay, however wouldn't reccomend.", rating: 4, user_id: user1.id, listing_id: listing1.id)
review7 = Review.create(comment: "Pretty decent. Paid on time. Not enought pay. Overbearing workload.", rating: 7, user_id: user5.id, listing_id: listing2.id)
review8 = Review.create(comment: "It was fine, but I wish they at least fed me lunch!", rating: 6, user_id: user3.id, listing_id: listing5.id)
review9 = Review.create(comment: "Good networking opportunity. Room to grow.", rating: 7, user_id: user1.id, listing_id: listing3.id)
review10 = Review.create(comment: "Its a job.", rating: 5, user_id: user5.id, listing_id: listing8.id)
review11 = Review.create(comment: "I suggest you pass on any job from this place.", rating: 3, user_id: user5.id, listing_id: listing7.id)
review12 = Review.create(comment: "Loved it. Hope they reach out again to me soon!", rating: 9, user_id: user3.id, listing_id: listing2.id)
review13 = Review.create(comment: "Great experience, but wish they gave me lunch.", rating: 8, user_id: user3.id, listing_id: listing4.id)
review14 = Review.create(comment: "Freelance you know. It was good, it was bad, it was everything.", rating: 6, user_id: user2.id, listing_id: listing6.id)
review15 = Review.create(comment: "This place was mediocre, but at least I'm in a movie.", rating: 7, user_id: user1.id, listing_id: listing9.id)
review16 = Review.create(comment: "Rockstar job opportunity. Loved the lobster lunch!", rating: 10, user_id: user4.id, listing_id: listing1.id)
review17 = Review.create(comment: "This place paid on time, which was good enough.", rating: 7, user_id: user3.id, listing_id: listing2.id)
review18 = Review.create(comment: "This place did not pay on time. Tracking down that check.", rating: 4, user_id: user4.id, listing_id: listing3.id)
review19 = Review.create(comment: "Utter trash. Burn it down.", rating: 1, user_id: user1.id, listing_id: listing4.id)
review20 = Review.create(comment: "Terribly dissapointing. Wanted to leave the second I walked into roach infested environment.", rating: 2, user_id: user1.id, listing_id: listing8.id)

puts "✅ Done seeding!"
