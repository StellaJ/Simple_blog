class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@comment = Comment.new
        @comment.post_id = @post.id
	end

	def new
	end

	def create
		 @post = Post.new(post_params)
         @post.save
         redirect_to @post
    end

    def edit
    	@post = Post.find(params[:id])
    end
    def update
        @post = Post.find(params[:id])
        @post.update(post_params)

        redirect_to post_path(@post)
    end
   private
  def post_params
    params.require(:post).permit(:title, :body)
end
end
