get '/' do
  @tags = Tag.all
  @posts = Post.all

  # if current_user
  # 	@current_user = current_user
  # 	erb :index
  # else
  # 	erb :login
  # end
  @current_user = current_user
  erb :index

end
