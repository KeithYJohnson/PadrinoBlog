# class Post < ActiveRecord::Base
# 	has_many :post_tags
# 	has_many :tags, :through => :post_tags 
# 	has_many :comments
# 	belongs_to :author
# end

require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class PostTest < Test::Unit::TestCase
  context "Post Model" do
  	setup do
  		@tag = Tag.new(:id => 4, :name => "rebellion")


  		@post = Post.new(:title => "Best places to start a new country", :author_id => 1)
  		@post.author = Author.new(:name => "Aaron Burr")
  		@post.post_tags << PostTag.new(:post => @post, :tag => @tag, :id => 1)
  		@post.comments << Comment.new(:body => "This guy...")
  		
  	end

    should 'belong to author' do
    	assert @post.respond_to?(:author)
    	assert_equal "Aaron Burr", @post.author.name
		end

		should 'have many post_tags' do
			assert @post.respond_to?(:post_tags)

			assert @post.post_tags.is_a?(Array)
			assert @post.post_tags.first.is_a?(PostTag)
		end

		should 'have many tags' do
			assert @post.respond_to?(:tags)
			assert_equal 0, @post.tags.length

		end

		should 'have many comments' do
			assert @post.respond_to?(:comments)
			assert_equal "This guy...", @post.comments.first.body
		end 





  end
end
