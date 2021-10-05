# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.delete_all

a = [
  {:name=>"Hudson",
  :path=>
   "https://shershegoes.com/wp-content/uploads/warren-street-in-hudson-ny.jpg",
  :description=>"A location in Hudson"},
  {:name=>"New York CIty",
  :path=>
   "https://images.unsplash.com/photo-1549654747-1fe362f45d7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80",
  :description=>"A location in New York City"},
  {:name=>"Long Island City",
  :path=>
   "https://cdn.vox-cdn.com/thumbor/dcC7c984_9MBWKpJK1lm41f8YNU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/19226769/190903_07_13_55_5DSR6037.jpg",
  :description=>"A location in Long Island CIty"},
  {:name=>"Los Angeles",
  :path=>
   "https://images.unsplash.com/photo-1515898913320-f38370edab7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1729&q=80",
  :description=>"A location in Los Angeles"},
  {:name=>"London",
  :path=>
   "https://images.unsplash.com/photo-1598874918183-09d623230e89?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1087&q=80",
  :description=>"A location in London"},
  {:name=>"Spain",
  :path=>
   "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1770&q=80",
  :description=>"A location in Spain"},
  {:name=>"Paris",
  :path=>
   "https://images.unsplash.com/photo-1496851473196-e26508c21494?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80",
  :description=>"A location in Paris"},
  {:name=>"Nyack",
  :path=>
   "https://static01.nyt.com/images/2019/03/03/realestate/03Living-In-Nyack-ss-slide-ACHG/03Living-In-Nyack-ss-slide-ACHG-jumbo.jpg",
  :description=>"A location in Nyack, NY"}
]

a.each do |attrs|
  Location.create(name: attrs[:name], path: attrs[:path], description: attrs[:description])
end