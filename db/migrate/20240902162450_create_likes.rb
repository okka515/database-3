class CreateLikes < ActiveRecord::Migration[6.1]
  def changeend
    create_table :likes do |t|
      t.integer :user_id
      t.integer :post_id
    end
  end
end
