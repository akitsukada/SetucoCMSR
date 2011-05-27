# -*- coding:UTF-8 -*-
site = Site.create(
  :name => 'SetucoCMSをRailsで',
  :url  => 'http://localhost:3000/',
  :comment => 'SetucoCMSをRuby on Rails 3 で作りました',
  :keyword => 'SetucoCMS,Ruby,Ruby on Rails,densetu,電設部',
  :open_date => Time.now
)

category = Category.create([
  {:name => 'cat1'},
  {:name => 'cat2'},
  {:name => 'cat3'},
])
