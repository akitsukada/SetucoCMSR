class Page < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :pages_tags, :dependent => :destroy
  belongs_to :account
  belongs_to :category

  scope :newer10, where(:published => true).order('created_date desc').limit(10)
  scope :uncategorized, where(:category_id => nil)
  scope :default_keyword_search, lambda { |key|
    where("published = 't' and " +
          "(title like ? or contents like ? or outline like ? or exists " +
          "(select * from pages p, tags, pages_tags where tags.name like ? " +
          "and p.id = pages_tags.page_id and pages_tags.tag_id = tags.id and pages.id = p.id))",
          "%" + key + "%", "%" + key + "%", "%" + key + "%", "%" + key + "%"
         )
  }
  scope :updates_of_this_month,
    where(:published => true)
    .where(:updated_at => Time.now.localtime.beginning_of_month..(1.month.since.beginning_of_month - 1.second))

end
