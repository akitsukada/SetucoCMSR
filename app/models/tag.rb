# -*- coding:UTF-8 -*-
class Tag < ActiveRecord::Base
  has_and_belongs_to_many :pages
  has_many :pages_tag

  validates :name,
    :presence => {:message => 'タグ名を入力してください。'},
    :uniqueness => {:message => 'タグ「%{value}」は既に登録されています。'}

  def self.ids_by_name tagnames
    existing_tags = Tag.select([:id, :name]).where(:name => tagnames)
    existing_names = existing_tags.map(&:name)
    news = tagnames - existing_names
    ids = news.map {|name| self.create(:name => name).id}
    ids += existing_tags.map(&:id)
  end

end
