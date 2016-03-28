class WelcomeController < ApplicationController
  def index
  end

  def home
    @default = true
    unless (params["location"].nil? and params["blog_type"].nil?)
      @default = false
      @blogs = Blog.all.where(location: params["location"], blog_type: params["blog_type"]).limit(10)
    else
      @blogs = Blog.all.limit(5)
    end
  end

  def blogs
    @slug = params["slug"]
    # render plain: @slug
  end
end
