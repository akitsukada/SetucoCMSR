# -*- coding:UTF-8 -*-
require 'date'
# 初期サンプルデータ

site = Site.create(
  :name => 'SetucoCMSをRailsで',
  :url  => 'http://localhost:3000/',
  :comment => 'SetucoCMSをRuby on Rails 3 で作りました',
  :keyword => 'SetucoCMS,Ruby,Ruby on Rails,densetu,電設部',
  :open_date => Time.now
)

10.times do |n|
  category = Category.create([
    {:name => "cat#{n}"}
  ])
end

18.times do |n|
  tag = Tag.create([
    {:name => "tag#{n}"}
  ])
end


page = Page.create ([
  {
    :title => 'ページタイトル1',
    :contents => 'こんてんつ1',
    :outline => '概要です1',
    :created_date => 3.days.ago.to_datetime,
    :account_id => 1,
    :published => 't',
    :category_id => 1
  },
  {
    :title => 'ページタイトル2',
    :contents => 'こんてんつ2',
    :outline => '概要です2',
    :created_date => 3.days.ago.to_datetime,
    :account_id => 1,
    :published => 'f',
    :category_id => 2
  },
  {
    :title => 'ページタイトル3',
    :contents => 'こんてんつ3',
    :outline => '概要です3',
    :created_date => 3.days.ago.to_datetime,
    :account_id => 1,
    :published => 't',
    :category_id => 2
  },
  {
    :title => 'hoge',
    :contents => 'hoge',
    :outline => '概要ですo',
    :created_date => 3.days.ago.to_datetime,
    :account_id => 1,
    :published => 't',
    :category_id => 1
  },
])
50.times do |i|
  page = Page.create(
    :title => 'hoge',
    :contents => 'hoge',
    :outline => '概要ですo',
    :account_id => 1,
    :created_date => i.days.ago.to_datetime,
    :published => i.odd? ? true : false,
    :category_id => 1
  )
end

acc = Account.create({
  :login_id => 'admin',
  :nickname => '管理者さん',
  :password => Digest::SHA1.hexdigest('password')
})

pt = PagesTag.create([
  {:page_id => 1, :tag_id => 1},
  {:page_id => 1, :tag_id => 2},
  {:page_id => 2, :tag_id => 1},
  {:page_id => 3, :tag_id => 1},
  {:page_id => 3, :tag_id => 2},
  {:page_id => 3, :tag_id => 3},
  {:page_id => 4, :tag_id => 3},
  {:page_id => 5, :tag_id => 3},
  {:page_id => 6, :tag_id => 3},
  {:page_id => 7, :tag_id => 3},
  {:page_id => 8, :tag_id => 3},
  {:page_id => 9, :tag_id => 3},
  {:page_id => 10, :tag_id => 3},
  {:page_id => 11, :tag_id => 3},
  {:page_id => 12, :tag_id => 3},
  {:page_id => 13, :tag_id => 3},
  {:page_id => 14, :tag_id => 3},
  {:page_id => 15, :tag_id => 3},
  {:page_id => 16, :tag_id => 3},
  {:page_id => 17, :tag_id => 3},
  {:page_id => 18, :tag_id => 3},
  {:page_id => 19, :tag_id => 3},
  {:page_id => 20, :tag_id => 3},
  {:page_id => 21, :tag_id => 3},
])

amb = Ambition.create(
  :ambition => 'Rails3！！'
)

today = Date.today
(1..10).each do |t|
goal = Goal.create(
  :page_count => t ** 2,
  :target_month => (today - 10.months + t.months).beginning_of_month
)
end
