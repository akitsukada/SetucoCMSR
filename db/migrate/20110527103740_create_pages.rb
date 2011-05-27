class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :contents
      t.text :outline
      t.references :account
      t.boolean :published
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
