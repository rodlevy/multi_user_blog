get '/' do
  @tags = Tag.all
  @posts = Post.all
  @current_user = current_user
  erb :index

end
