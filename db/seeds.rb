# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

author_name = 'd2h'
author = Author.find_by_name(author_name) || Author.create!(name: author_name)

posts = [{
  title: "Rails is Omakase",
  author: author,
  date: Date.new(2012, 12, 27),
  excerpt: "There are lots of à la carte software environments in this world. Places where in order to eat, you must first carefully look over the menu of options to order exactly what you want.",
  content: "I want this for my ORM, I want that for my template language, and let's finish it off with this routing library. Of course, you're going to have to know what you want, and you'll rarely have your horizon expanded if you always order the same thing, but there it is. It's a very popular way of consuming software.\n\nRails is not that. Rails is omakase."
}, {
  title: "The Parley Letter",
  author: author,
  date: Date.new(2012, 12, 24),
  excerpt: "My [appearance on the Ruby Rogues podcast](http://rubyrogues.com/056-rr-david-heinemeier-hansson/) recently came up for discussion again on the private Parley mailing list.",
  content: "A long list of topics were raised and I took a time to ramble at large about all of them at once. Apologies for not taking the time to be more succinct, but at least each topic has a header so you can skip stuff you don't care about.\n\n### Maintainability\n\nIt's simply not true to say that I don't care about maintainability. I still work on the oldest Rails app in the world."
}]

posts.each do |post_data|
  post = Post.find_by_title(post_data[:title]) || Post.new(post_data)
  post.save! if post.new_record?
end
