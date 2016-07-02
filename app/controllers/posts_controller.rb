class PostsController < ApplicationController

	def index

		@posts= Post.all.order('created_at ASC')
		
	end

	def show
		@post= Post.find(params[:id])		
	end


	def new
		@post= Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			flash[:success]= "El post ha sido creado con éxito"
			redirect_to posts_path
		else
			render :new
		end		
	end


	def edit
		@post = Post.find(params[:id])		
	end


	def update
		post = Post.find(params[:id])
		if post.update(post_params) 
			flash[:success]= "El post fue editado con éxito"
			redirect_to posts_path
		else
			render :edit
		end

	end

	def destroy
		Post.find(params[:id]).destroy
		flash[:success]= "El post fue elimnado con éxito"
		redirect_to posts_path		
	end


	private

	def post_params
		params.require(:post).permit(:title, :body)
		
	end

end
