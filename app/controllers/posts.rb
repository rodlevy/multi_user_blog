get '/post/:id' do
	@post = Post.find_by_id(params[:id])
	erb :post
end

get '/create' do
	@tags = Tag.all
	erb :create
end


post '/create' do
	p tag_name = params[:tag]
	# p tag_names = params[:post][:tag][:title]
	p tag = Tag.find_or_create_by_title(tag_name)
	post = Post.create(params[:post])
	tag.posts << post

	redirect to '/'

end