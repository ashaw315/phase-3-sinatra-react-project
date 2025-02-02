puts "🌱 Seeding spices..."

# Seed your database here

puts "creating users..."

# user1 = User.create(name: "Alex Weaver", password: "12345", position: "Art Handler", user_despcription: "I love handling delicate art!", skills: "carpentry, leveling")
# user2 = User.create(name: "Adam Shaw", password: "12345", position: "Artist", user_despcription: "I love making art, and I know how to hang it!", skills: "painting, leveling")
# user3 = User.create(name: "Ryan Reynolds", password: "blake", position: "Actor", user_despcription: "I am an actor, so I will do any job if you pay me.", skills: "laughing, crying, clown")
# user4 = User.create(name: "Jennifer Lopez", password: "12345", position: "Jack-of-all-trades", user_despcription: "I can do and fix anything", skills: "If it exits I know how to do it, leveling")
# user5 = User.create(name: "Link", password: "zelda", position: "Swordsman", user_despcription: "Great at mowing down grass", skills: "lawn care, hookshot, archery")

15.times {
    User.create(name: Faker::Name.name, password: Faker::Food.fruits, position: Faker::Job.field, user_despcription: Faker::Job.key_skill, skills: Faker::Hobby.activity, favorite_quote: Faker::Quote.matz, favorite_game:Faker::Game.title)
}

puts "creating listings..."

# listing1 = Listing.create(job_title: "The Whitney", job_description: "Art Handling", hourly_rate: 30, start_date: 04-15-2022, end_date: 04-20-2022)
# listing2 = Listing.create(job_title: "MOMA", job_description: "Art Handling", hourly_rate: 28, start_date: "02/02/22", end_date: "03/02/22")
# listing3 = Listing.create(job_title: "Sud n Soak Car Wash", job_description: "Washing my car", hourly_rate: 30, start_date: "2022-03-22", end_date: "2022-03-26")
# listing4 = Listing.create(job_title: "Frontend Dev at high profile Tech startup", job_description: "Building a React application", hourly_rate: 25, start_date: "10/12/22", end_date: "11/01/22")
# listing5 = Listing.create(job_title: "Dallas Cowboys", job_description: "Mowing a Lawn", hourly_rate: 22, start_date: 02/23/22, end_date: 03/29/22)
# listing6 = Listing.create(job_title: "Furry Friends Animal Shelter", job_description: "Dog walking", hourly_rate: 20, start_date: "07/04/22", end_date: "07/05/22")
# listing7 = Listing.create(job_title: "Private Home", job_description: "Carpentry", hourly_rate: 25, start_date: "11/12/22", end_date: "12/10/22")
# listing8 = Listing.create(job_title: "Toddler Daycare", job_description: "Babysitting", hourly_rate: 50, start_date: "12/24/22", end_date: "12/31/22")
# listing9 = Listing.create(job_title: "Untitled movie project", job_description: "Starring in blockbuster film", hourly_rate: 27, start_date: "03/15/22", end_date: "04/14/22")

20.times {
    Listing.create(job_title: Faker::Job.title, job_description: Faker::Job.position, hourly_rate: rand(20..50), start_date: Faker::Date.between(from: '2022-01-05', to: '2022-01-17'), end_date: Faker::Date.between(from: '2022-01-17', to: '2022-02-17'), hired: Faker::Boolean.boolean(true_ratio: 0.2))
}


puts "creating reviews..."

20.times {
    Review.create(comment: Faker::GreekPhilosophers.quote, rating: rand(1..10), user_id: User.all.sample.id, listing_id: Listing.all.sample.id)
}

# review1 = Review.create(comment: "This place was great! Paid on time.", rating: 8, user_id: user3.id, listing_id: listing7.id)
# review2 = Review.create(comment: "Terrible experience!", rating: 2, user_id: user4.id, listing_id: listing2.id)
# review3 = Review.create(comment: "Bad. Just Bad.", rating: 2, user_id: user1.id, listing_id: listing9.id)
# review4 = Review.create(comment: "Loved working here. Hoping for fulltime position soon!.", rating: 10, user_id: user2.id, listing_id: listing3.id)
# review5 = Review.create(comment: "I can't belive this place is still in business.", rating: 1, user_id: user4.id, listing_id: listing6.id)
# review6 = Review.create(comment: "It was okay, however wouldn't reccomend.", rating: 4, user_id: user1.id, listing_id: listing1.id)
# review7 = Review.create(comment: "Pretty decent. Paid on time. Not enought pay. Overbearing workload.", rating: 7, user_id: user5.id, listing_id: listing2.id)
# review8 = Review.create(comment: "It was fine, but I wish they at least fed me lunch!", rating: 6, user_id: user3.id, listing_id: listing5.id)
# review9 = Review.create(comment: "Good networking opportunity. Room to grow.", rating: 7, user_id: user1.id, listing_id: listing3.id)
# review10 = Review.create(comment: "Its a job.", rating: 5, user_id: user5.id, listing_id: listing8.id)
# review11 = Review.create(comment: "I suggest you pass on any job from this place.", rating: 3, user_id: user5.id, listing_id: listing7.id)
# review12 = Review.create(comment: "Loved it. Hope they reach out again to me soon!", rating: 9, user_id: user3.id, listing_id: listing2.id)
# review13 = Review.create(comment: "Great experience, but wish they gave me lunch.", rating: 8, user_id: user3.id, listing_id: listing4.id)
# review14 = Review.create(comment: "Freelance you know. It was good, it was bad, it was everything.", rating: 6, user_id: user2.id, listing_id: listing6.id)
# review15 = Review.create(comment: "This place was mediocre, but at least I'm in a movie.", rating: 7, user_id: user1.id, listing_id: listing9.id)
# review16 = Review.create(comment: "Rockstar job opportunity. Loved the lobster lunch!", rating: 10, user_id: user4.id, listing_id: listing1.id)
# review17 = Review.create(comment: "This place paid on time, which was good enough.", rating: 7, user_id: user3.id, listing_id: listing2.id)
# review18 = Review.create(comment: "This place did not pay on time. Tracking down that check.", rating: 4, user_id: user4.id, listing_id: listing3.id)
# review19 = Review.create(comment: "Utter trash. Burn it down.", rating: 1, user_id: user1.id, listing_id: listing4.id)
# review20 = Review.create(comment: "Terribly dissapointing. Wanted to leave the second I walked into roach infested environment.", rating: 2, user_id: user1.id, listing_id: listing8.id)

puts "creating applicants..."

10.times {
    Applicant.create(user_id: User.all.sample.id, listing_id: Listing.all.sample.id)
}

puts "creating applicants..."

20.times {
    Candidate.create(user_id: User.all.sample.id, buzzword: Faker::Company.buzzword)
}

puts "✅ Done seeding!"
