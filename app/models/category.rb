# -*- coding:UTF-8 -*-
class Category < ActiveRecord::Base
  has_many :pages
  belongs_to :categories, :foreign_key => :parent_id

  validates :name,
    :presence => {:message => 'カテゴリ名を入力してください。'},
    :uniqueness => {:message => 'カテゴリ「%{value}」は既に登録されています。'}

end
