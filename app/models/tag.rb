class Tag < ActiveRecord::Base
  has_and_belongs_to_many :pages
  has_many :pages_tag
end
