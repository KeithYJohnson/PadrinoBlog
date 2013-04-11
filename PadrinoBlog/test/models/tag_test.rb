require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class TagTest < Test::Unit::TestCase
  context "Tag Model" do
  	setup do
			@tag = Tag.new(:name => "sleep")
      @tag.post = Post.new(:title => "Bedtime")
      #@tag.post = Post.new(:title => "Bedtime")

		end



    should 'belong to post' do
      assert @tag.respond_to?(:post)
      assert_equal "sleep", @tag.posts.addtag
    end



  end
end
