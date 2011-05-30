class AddCreatedDateToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :created_date, :datetime
  end

  def self.down
    remove_column :pages, :created_date
  end
end
