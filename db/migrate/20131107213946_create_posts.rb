class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :link
      t.string :author, default: 'anonymous'
      t.integer :up_votes, default: 0
      t.integer :down_votes, default: 0
      t.integer :category_id, index: true

      t.timestamps
    end
  end
end
