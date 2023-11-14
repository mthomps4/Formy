class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published, default: false

      t.timestamps
    end

    add_index :posts, :title
    add_index :posts, :published
  end
end
