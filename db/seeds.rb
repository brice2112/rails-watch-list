# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "json"
require "rest-client"


# response = RestClient.get "https://hacker-news.firebaseio.com/v0/topstories.json"
# list = JSON.parse(response)

post = RestClient.get "https://tmdb.lewagon.com/movie/top_rated"
post_parsed = JSON.parse(post)
# p post_parsed["results"][0]
post_parsed["results"].each do |movie|
  p movie["original_title"]
  Movie.create!(
    title: movie["original_title"],
    overview: movie["overview"],
    poster_url: movie["poster_path"],
    rating: movie["vote_ average"]
  )
end
