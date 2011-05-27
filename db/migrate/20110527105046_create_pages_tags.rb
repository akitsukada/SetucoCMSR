class CreatePagesTags < ActiveRecord::Migration
  def self.up
    create_table :pages_tags,:id => false do |t|
      t.references :page
      t.references :tag
    end
  end

  def self.down
    drop_table :pages_tags
  end
end
