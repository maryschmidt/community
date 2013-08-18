class PostsController < ApplicationController
  include ActionView::RecordIdentifier

  def index
    @posts = Post.all
  end
end
