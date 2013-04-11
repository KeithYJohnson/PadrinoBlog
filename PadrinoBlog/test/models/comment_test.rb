# class Comment < ActiveRecord::Base
# 	belongs_to :post
# 	belongs_to :author

# end


require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class CommentTest < Test::Unit::TestCase
  context "Comment Model" do
  	setup do
  		@comment = Comment.new
  		#Tried passing an id with with Author.new and seeing if that would instantiate a post as well with the belongs_to post tests
  		@comment.author = Author.new(:name => "Keith")
  		@comment.post = Post.new(:author_id => 1)



  	end



  	should 'belong to post' do
  		assert @comment.respond_to?(:post)
  		assert @comment.post.is_a? Post
  		assert_equal @comment.post.author_id, 1

  	end

  	should 'belong to author' do
  		assert @comment.respond_to?(:author)
  		assert_not_nil @comment.author
  		assert @comment.author.is_a? Author

  		assert_equal "Keith", @comment.author.name

    end
  end
end
