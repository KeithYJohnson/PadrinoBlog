# class Tag < ActiveRecord::Base
# 	has_many :post_tags
# 	has_many :posts, :through => :post_tag

# end



require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class TagTest < Test::Unit::TestCase
  context "Tag Model" do
  	setup do
			@tag = Tag.new  		


		end



    should 'construct new instance' do
      # @tag = Tag.new
      # assert_not_nil @tag
    end
  end
end
