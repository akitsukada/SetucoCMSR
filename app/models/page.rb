class Page < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :account
  belongs_to :category

  scope :newer10, where(:published => 't').order('updated_at desc').limit(10)
  scope :uncategorized,
    where(:category_id => nil)


end
