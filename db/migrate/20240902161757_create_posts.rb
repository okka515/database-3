class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :imageurl
      t.string :content
      t.datetime :daytime
    end
  end
end
