class AddCreatedDatetimeToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :created_datetime, :datetime
  end

  def self.down
    remove_column :pages, :created_datetime
  end
end
