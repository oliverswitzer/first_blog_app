class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :body 
      t.timestamps
    end
    Post.create(title: "My first post", body: "This is the posts content.")
    Post.create(title: "Poop", body: "More poop.")
  end

  def down
    drop_table :posts
  end
end
