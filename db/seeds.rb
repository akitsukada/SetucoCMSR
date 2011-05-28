# -*- coding:UTF-8 -*-

# 初期サンプルデータ

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

tag = Tag.create([
  {:name => 'tag1'},
  {:name => 'tag2'},
  {:name => 'tag3'},
  {:name => 'tag4'},
  {:name => 'tag5'},
  {:name => 'tag6'},
  {:name => 'tag7'},
  {:name => 'tag8'},
  {:name => 'tag9'},
  {:name => 'tag10'},
  {:name => 'tag11'},
  {:name => 'tag12'},
  {:name => 'tag13'},
  {:name => 'tag14'},
  {:name => 'tag15'},
  {:name => 'tag16'},
  {:name => 'tag17'},
  {:name => 'tag18'},
])


page = Page.create ([
  {
    :title => 'ページタイトル1',
    :contents => 'こんてんつ1',
    :outline => '概要です1',
    :account_id => 1,
    :published => 't',
    :category_id => 1
  },
  {
    :title => 'ページタイトル2',
    :contents => 'こんてんつ2',
    :outline => '概要です2',
    :account_id => 1,
    :published => 'f',
    :category_id => 2
  },
  {
    :title => 'ページタイトル3',
    :contents => 'こんてんつ3',
    :outline => '概要です3',
    :account_id => 1,
    :published => 't',
    :category_id => 2
  },
  {
    :title => 'hoge',
    :contents => 'hoge',
    :outline => '概要ですo',
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
    :published => 't',
    :category_id => 1
  )
end

pt = PagesTag.create([
  {:page_id => 1, :tag_id => 1},
  {:page_id => 1, :tag_id => 2},
  {:page_id => 2, :tag_id => 1},
  {:page_id => 3, :tag_id => 1},
  {:page_id => 3, :tag_id => 2},
  {:page_id => 3, :tag_id => 3},
])
