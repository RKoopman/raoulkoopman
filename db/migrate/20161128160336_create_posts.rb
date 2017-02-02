class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :category_id

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
