class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :name
      t.string :url
      t.text :comment
      t.string :keyword
      t.datetime :open_date

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
