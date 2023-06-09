# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!
#rails generate model Studio
#rails generate model Movie
#rails generate model Actor
#rails generate model Role

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

#Studio
studio1 = Studio.new

studio1["name"] = "Warner Bros."
studio1.save # insert into table

#puts studio1.inspect

#Movie
warner = Studio.find_by({ "name" => "Warner Bros." })

movie1 = Movie.new

movie1["title"] = "Batman Begins"
movie1["year_released"] = 2005
movie1["rated"] = "PG-13"
movie1["studio_id"] = warner["id"]
movie1.save # insert into table

#puts movie1.inspect

movie2 = Movie.new

movie2["title"] = "The Dark Knight"
movie2["year_released"] = 2008
movie2["rated"] = "PG-13"
movie2["studio_id"] = warner["id"]
movie2.save # insert into table

#puts movie2.inspect

movie3 = Movie.new

movie3["title"] = "The Dark Knight Rises"
movie3["year_released"] = 2012
movie3["rated"] = "PG-13"
movie3["studio_id"] = warner["id"]
movie3.save # insert into table

#puts movie3.inspect

#Actors
actor1 = Actor.new

actor1["name"] = "Christian Bale"
actor1.save # insert into table

#puts actor1.inspect

actor2 = Actor.new

actor2["name"] = "Michael Caine"
actor2.save # insert into table

#puts actor2.inspect

actor3 = Actor.new

actor3["name"] = "Liam Neeson"
actor3.save # insert into table

#puts actor3.inspect

actor4 = Actor.new

actor4["name"] = "Katie Holmes"
actor4.save # insert into table

#puts actor4.inspect

actor5 = Actor.new

actor5["name"] = "Gary Oldman"
actor5.save # insert into table

#puts actor5.inspect

actor6 = Actor.new

actor6["name"] = "Heath Ledger"
actor6.save # insert into table

#puts actor6.inspect

actor7 = Actor.new

actor7["name"] = "Aaron Eckhart"
actor7.save # insert into table

#puts actor7.inspect

actor8 = Actor.new

actor8["name"] = "Maggie Gyllenhaal"
actor8.save # insert into table

#puts actor8.inspect

actor9 = Actor.new

actor9["name"] = "Tom Hardy"
actor9.save # insert into table

#puts actor9.inspect

actor10 = Actor.new

actor10["name"] = "Joseph Gordon-Levitt"
actor10.save # insert into table

#puts actor10.inspect

actor11 = Actor.new

actor11["name"] = "Anne Hathaway"
actor11.save # insert into table

#puts actor11.inspect

#Roles
batman_begins = Movie.find_by({ "title" => "Batman Begins" })
christianb = Actor.find_by({ "name" => "Christian Bale" })
michaelc = Actor.find_by({ "name" => "Michael Caine" })
liamn = Actor.find_by({ "name" => "Liam Neeson" })
katieh = Actor.find_by({ "name" => "Katie Holmes" })
garyo = Actor.find_by({ "name" => "Gary Oldman" })

dark_knight = Movie.find_by({ "title" => "The Dark Knight" })
heathl = Actor.find_by({ "name" => "Heath Ledger" })
aarone = Actor.find_by({ "name" => "Aaron Eckhart" })
maggieg = Actor.find_by({ "name" => "Maggie Gyllenhaal" })

knight_rises = Movie.find_by({ "title" => "The Dark Knight Rises" })
tomh = Actor.find_by({ "name" => "Tom Hardy" })
josephg = Actor.find_by({ "name" => "Joseph Gordon-Levitt" })
anneh = Actor.find_by({ "name" => "Anne Hathaway" })

role1 = Role.new

role1["movie_id"] = batman_begins["id"]
role1["actor_id"] = christianb["id"]
role1["character_name"] = "Bruce Wayne"
role1.save # insert into table

#puts role1.inspect

role2 = Role.new

role2["movie_id"] = batman_begins["id"]
role2["actor_id"] = michaelc["id"]
role2["character_name"] = "Alfred"
role2.save # insert into table

#puts role2.inspect

role3 = Role.new

role3["movie_id"] = batman_begins["id"]
role3["actor_id"] = liamn["id"]
role3["character_name"] = "Ra's Al Ghul"
role3.save # insert into table

#puts role3.inspect

role4 = Role.new

role4["movie_id"] = batman_begins["id"]
role4["actor_id"] = katieh["id"]
role4["character_name"] = "Rachel Dawes"
role4.save # insert into table

#puts role4.inspect

role5 = Role.new

role5["movie_id"] = batman_begins["id"]
role5["actor_id"] = garyo["id"]
role5["character_name"] = "Commissioner Gordon"
role5.save # insert into table

#puts role5.inspect

role6 = Role.new

role6["movie_id"] = dark_knight["id"]
role6["actor_id"] = christianb["id"]
role6["character_name"] = "Bruce Wayne"
role6.save # insert into table

#puts role6.inspect

role7 = Role.new

role7["movie_id"] = dark_knight["id"]
role7["actor_id"] = heathl["id"]
role7["character_name"] = "Joker"
role7.save # insert into table

#puts role7.inspect

role8 = Role.new

role8["movie_id"] = dark_knight["id"]
role8["actor_id"] = aarone["id"]
role8["character_name"] = "Harvey Dent"
role8.save # insert into table

#puts role8.inspect

role9 = Role.new

role9["movie_id"] = dark_knight["id"]
role9["actor_id"] = michaelc["id"]
role9["character_name"] = "Alfred"
role9.save # insert into table

#puts role9.inspect

role10 = Role.new

role10["movie_id"] = dark_knight["id"]
role10["actor_id"] = maggieg["id"]
role10["character_name"] = "Rachel Dawes"
role10.save # insert into table

#puts role10.inspect

role11 = Role.new

role11["movie_id"] = knight_rises["id"]
role11["actor_id"] = christianb["id"]
role11["character_name"] = "Bruce Wayne"
role11.save # insert into table

#puts role11.inspect

role12 = Role.new

role12["movie_id"] = knight_rises["id"]
role12["actor_id"] = garyo["id"]
role12["character_name"] = "Commissioner Gordon"
role12.save # insert into table

#puts role12.inspect

role13 = Role.new

role13["movie_id"] = knight_rises["id"]
role13["actor_id"] = tomh["id"]
role13["character_name"] = "Bane"
role13.save # insert into table

#puts role13.inspect

role14 = Role.new

role14["movie_id"] = knight_rises["id"]
role14["actor_id"] = josephg["id"]
role14["character_name"] = "John Blake"
role14.save # insert into table

#puts role14.inspect

role15 = Role.new

role15["movie_id"] = knight_rises["id"]
role15["actor_id"] = anneh["id"]
role15["character_name"] = "Selina Kyle"
role15.save # insert into table

#puts role15.inspect


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Define array of movie objects
movies = [batman_begins, dark_knight, knight_rises]

# Loop through each movie object in the array
movies.each do |movie|
  # Retrieve the studio name by joining the movies and studios tables
  studio_name = Studio.find(movie.studio_id).name

  # Print movie name, release year, rating, and production company
  puts "-- #{movie.title} #{movie.year_released} #{movie.rated} #{studio_name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

cast_by_movie = Role.all

for actor in cast_by_movie
  movie_title = Movie.find_by({"id" => actor["movie_id"]})["title"]
  actor_name = Actor.find_by({"id" => actor["actor_id"]})["name"]
  character_name = actor["character_name"]
  puts "-- #{movie_title} #{actor_name} #{character_name}"
end
