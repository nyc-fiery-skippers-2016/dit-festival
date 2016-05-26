# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

judges = User.create! [{:username => "peo_pi_caprio",
                       :password => "password",
                       :judge => true },
                      {:username => "bobby_je_niro",
                       :password => "password",
                       :judge => true },
                      {:username => "iuliia_roberts",
                       :password => "password",
                       :judge => true },
                      {:username => "zack_mephron",
                       :password => "password",
                       :judge => true },
                      {:username => "mark_sahlberg",
                       :password => "password",
                       :judge => true },
                      {:username => "ryan_josling",
                       :password => "password",
                       :judge => true }]

users = 20.times.map do
  User.create!( :username => Faker::Internet.user_name,
                :judge => false,
                :password => 'password' )
end

categories = Category.create! [{:name => "Drama"},
                               {:name => "Comedy"},
                               {:name => "Thriller"},
                               {:name => "Musical"},
                               {:name => "Action"},
                               {:name => "Documentary"}]

films = Film.create! [{:title => "The Panshank Redemption",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 1)},
                      {:title => "Saving Private Ryan Jafari",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 1)},
                      {:title => "WALL*ST",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 2)},
                       {:title => "Hello World!",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 4)},
                       {:title => "Monty Python vs Rails",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 4)},
                       {:title => "The Hunger Games: Catching Firey Skippers",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 5)},
                       {:title => "The Dark Nighthawks",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 5)},
                       {:title => "Planet of the Pocket Gophers",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 6)},
                       {:title => "School of Rock Doves",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 4)},
                       {:title => "The Old Man and the Sea Lions",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 3)},
                       {:title => "Peter Pan Wangperawong",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 4)},
                       {:title => "The Squirrel of Wall Street",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 1)},
                       {:title => "Rock Doves of Ages",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 4)},
                       {:title => "Pan Fiction",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 3)},
                       {:title => "I Am Sam Blackman",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 1)},
                       {:title => "Harry Potter and the Philosopher's Ruby Gem",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 2)},
                       {:title => "Eat, Pray, CRUD",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 2)},
                       {:title => "Guardians of the Github",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 2)},
                       {:title => "Big Heroku 6",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 5)},
                       {:title => "21 Wall Street",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 6)},
                       {:title => "The Fault in Our Rspec",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 1)},
                       {:title => "Inside Out TDD",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 2)},
                       {:title => "Mission:Impossible Sudoku Challenge",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 5)},
                       {:title => "The Master of Merge Conflicts",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 6)},
                       {:title => "The Sea Lion King",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 6)},
                       {:title => "Fantastic Mr. Island Foxes",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 2)},
                       {:title => "500 Days of DBC",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 3)},
                       {:title => "Julie and Iuliia",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 3)},
                       {:title => "Pirates of the...Don't Torrent Here",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 3)},
                       {:title => "The Ruby and The Beast",
                       :user => User.first(6).sample,
                       :category => Category.find_by(id: 4)}]

ratings = 40.times.map do
  Rating.create!( :score => rand(1..5),
                  :user => User.all.sample,
                  :film => Film.all.sample )
end

reviews = 60.times.map do
  Review.create!( :body => Faker::Lorem.sentence,
                  :film => Film.all.sample,
                  :user => User.all.sample )
end

comments = 50.times.map do
  Comment.create!( :body => Faker::Lorem.sentence,
                   :user => User.all.sample,
                   :review => Review.all.sample )
end