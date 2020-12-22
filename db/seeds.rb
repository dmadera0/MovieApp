# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# api_key = 40bc85773c9d9fc22f3ff8b59f1f27ea

# Favorite.destroy_all
# Movies.destroy_all
# User.destroy_all

require 'pry'



(1..50).to_a.each do |page|
    # binding.pry
    url = "https://api.themoviedb.org/3/movie/top_rated?api_key=40bc85773c9d9fc22f3ff8b59f1f27ea&language=en-US&page=#{page.to_s}"
    response = RestClient.get(url)
    parsed_response = JSON.parse(response)
    
    parsed_response["results"].each do |movie|
        # binding.pry
        Movie.create(
            title: movie["title"], 
            year: movie["release_date"], 
            plot: movie["overview"], 
            rating: movie["vote_average"], 
            image: movie["poster_path"], 
            vote_count: movie["vote_count"]
        )
    end
    
end 