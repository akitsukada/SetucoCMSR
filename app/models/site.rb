# -*- coding:UTF-8 -*-
class Site < ActiveRecord::Base
  validates :name,
    :presence => {:message => 'サイト名を入力してください。'}
  validates :url,
    :presence => {:message => 'urlを入力してください。'}
end
