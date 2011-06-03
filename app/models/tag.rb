# -*- coding:UTF-8 -*-
class Tag < ActiveRecord::Base
  has_and_belongs_to_many :pages
  has_many :pages_tag

  validates :name,
    :presence => {:message => 'タグ名を入力してください。'},
    :uniqueness => {:message => 'タグ「%{value}」は既に登録されています。'}
end
