get '/post' do
	@posts = Post.find_all_by_user_id(current_user.id)

	@current_user = current_user
	erb :posts
end


get '/post/:id' do
	@post = Post.find_by_id(params[:id])
	erb :post
end

get '/create' do
	@tags = Tag.all
	erb :create
end

get '/post/edit/:post_title' do
	@post = Post.find_by_title(params[:post_title])
	erb :edit_post
end

post '/edit_post' do
	post = Post.find_by_id(params[:post][:id])
	if !params[:post][:title].blank?
		post.title = params[:post][:title]
	end
	if !params[:post][:body].blank?
		post.body =params[:post][:body]
	end
	post.save
	redirect to '/'
end

post '/delete_post' do
	post = Post.find_by_id(params[:id])
	post.delete
	redirect to '/'
end


post '/create' do
	p tag_name = params[:tag]
	p tag = Tag.find_or_create_by_title(tag_name)
	post = Post.new(params[:post])
	post.user_id = current_user.id
	post.save
	tag.posts << post

	redirect to '/'

end