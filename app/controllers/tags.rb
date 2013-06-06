get '/tag/:title' do
	tag_title = params[:title]
	@tag = Tag.find_by_title(tag_title)
	@posts = @tag.posts

	erb :tags

end