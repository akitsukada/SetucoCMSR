class Page < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :account
  belongs_to :category

  scope :newer10, where(:published => 't').order('updated_at desc').limit(10)
  scope :uncategorized, where(:category_id => nil)
  scope :default_keyword_search, lambda { |key|
    where("published = 't' and " +
          "(title like ? or contents like ? or outline like ? or exists " +
          "(select * from pages p, tags, pages_tags where p.id = pages_tags.page_id " +
          "and pages_tags.tag_id = tags.id and tags.name like ? and pages.id = p.id))",
          "%" + key + "%", "%" + key + "%", "%" + key + "%", "%" + key + "%"
         )
  }

end
