# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

judges = User.create! [{:username => "PeoPiCaprio",
                       :password => "password",
                       :judge => true },
                      {:username => "BobbyJeNiro",
                       :password => "password",
                       :judge => true },
                      {:username => "IuliiaRoberts",
                       :password => "password",
                       :judge => true },
                      {:username => "ZackMephron",
                       :password => "password",
                       :judge => true },
                      {:username => "MarkSahlberg",
                       :password => "password",
                       :judge => true },
                      {:username => "RyanJosling",
                       :password => "password",
                       :judge => true }]

users = 20.times.map do
  User.create!( :username => Faker::Internet.user_name,
                :judge => false,
                :password => 'password' )
end

categories = Category.create! [{:name => "Drama"},
                               {:name => "Comedy"},
                               {:name => "Thriller/Horror"},
                               {:name => "Musical"},
                               {:name => "Action/Adventure"},
                               {:name => "Documentary"}]

films = Film.create! [{:title => "The Panshank Redemption",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                      {:title => "Saving Private Ryan Jafari",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                      {:title => "WALL*ST",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Hello World!",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Monty Python vs Rails",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "The Hunger Games: Catching Firey Skippers",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "The Dark Nighthawks",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Planet of the Pocket Gophers",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "School of Rock Doves",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "The Old Man and the Sea Lions",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Peter Pan Wangperawong",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "The Squirrel of Wall Street",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "To Kill a Rock Dove",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Pan Fiction",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "I Am Sam Blackman",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Harry Potter and the Philosopher's Ruby Gem",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Eat, Pray, CRUD",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Guardians of the Github",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Big Heroku 6",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "21 Wall Street",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "The Fault in Our Rspec",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Inside Out TDD",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Mission:Impossible Sudoku Challenge",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "The Master of Merge Conflicts",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "The Sealion King",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Fantastic Mr. Island Foxes",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "500 Days of DBC",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Julia and Iuliia",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "Pirates of the...Don't Torrent Here",
                       :user => User.first(6).sample,
                       :category => Category.all.sample},
                       {:title => "The Ruby and The Beast",
                       :user => User.first(6).sample,
                       :category => Category.all.sample}]

ratings = 30.times.map do
  Rating.create!( :score => rand(1..10),
                  :user => User.all.sample,
                  :film => Film.all.sample )
end

reviews = 30.times.map do
  Review.create!( :body => Faker::Lorem.sentence,
                  :film => Film.all.sample,
                  :user => User.last(20).sample )
end

comments = 50.times.map do
  Comment.create!( :body => Faker::Lorem.sentence,
                   :user => User.all.sample,
                   :review => Review.all.sample )
end