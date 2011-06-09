class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.xml
 def create
	@post = Post.find(params[:post_id])
	@comment = @post.comments.build(params[:comment])
	@comment.save
	redirect_to @post
	end
end
