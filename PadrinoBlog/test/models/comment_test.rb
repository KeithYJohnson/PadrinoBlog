# class Comment < ActiveRecord::Base
# 	belongs_to :post
# 	belongs_to :author

# end


require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class CommentTest < Test::Unit::TestCase
  context "Comment Model" do
  	setup do
  		@comment = Comment.new
  	end



  	should 'belong to post' do
  		assert @comment.respond_to?(:post)
  	end

  	should 'belong to author' do
  		assert @comment.respond_to?(:author)
  	end

    should 'construct new instance' do
      @comment = Comment.new
      assert_not_nil @comment
    end
  end
end
