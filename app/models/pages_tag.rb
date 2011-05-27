class PagesTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :page
  scope :counts_by_tag_id,
    select('tag_id,tags.updated_at, count(*) as count')
    .joins('LEFT JOIN pages ON pages.id = pages_tags.page_id LEFT JOIN tags ON tags.id = pages_tags.tag_id')
    .where('pages.published = ?', 't')
    .order('tags.updated_at desc')
    .group('tag_id', 'tags.updated_at')

  attr_accessor :level

end
