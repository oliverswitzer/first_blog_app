require 'bundler'
Bundler.require

set :database, "sqlite3:///blog.db"

class Post < ActiveRecord::Base

  get "/" do
    @posts = Post.order("created_at DESC")
    erb :"posts/index"
  end

  get "/posts/new" do
    @title = "New Post"
    @post = Post.new
    erb :"posts/new"
  end


  helpers do 
    def title
      if @title 
        "#{@title} -- My blog"
      else
        "My Blog"
      end
    end

    def pretty_date(time)
      time.strftime("%d %b %Y")
    end
  end

end 

