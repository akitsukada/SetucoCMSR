# -*- coding:UTF-8 -*-
class Category < ActiveRecord::Base
  has_many :pages, :dependent => :nullify

  has_many :children, :class_name => 'Category', :foreign_key => :parent_id
  belongs_to :parent, :class_name => 'Category', :foreign_key => :parent_id

  validates :name,
    :presence => {:message => 'カテゴリ名を入力してください。'},
    :uniqueness => {:message => 'カテゴリ「%{value}」は既に登録されています。'}

end
