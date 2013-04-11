# class Author < ActiveRecord::Base
# 	has_many :posts
# 	has_many :comments
# end


require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class AuthorTest < Test::Unit::TestCase
  context "Author Model" do
  	setup do
  		@author = Author.new(:name => "John Wilkes Booth")
  		@author.posts << Post.new(:title => "NYC")
  		@author.posts << Post.new(:title => "WDI")
  	end

  	should 'construct new instance' do
  		assert @author.respond_to?(:posts)

  		assert_equal 2, @author.posts.length
  		assert @author.posts.is_a?(Array)
  		assert_equal "WDI", @author.posts.last.title
  		assert_equal "NYC", @author.posts.first.title
  		assert_equal "John Wilkes Booth", @author.name
  	end


  end
end
