10.times do 
	Post.create(:title => Faker::Lorem.sentence, :body => Faker::Lorem.paragraph)
end

Tag.create(:title => 'Hot')
Tag.create(:title => 'Cold')
Tag.create(:title => 'Awesome')
Tag.create(:title => 'Rad')
Tag.create(:title => 'Bitchin')

Blog.create(:tag_id => 1,:post_id => 1)
Blog.create(:tag_id => 1,:post_id => 2)
Blog.create(:tag_id => 2,:post_id => 1)
Blog.create(:tag_id => 4,:post_id => 4)
Blog.create(:tag_id => 5,:post_id => 1)