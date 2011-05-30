class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.integer :page_count
      t.date :target_month

      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
