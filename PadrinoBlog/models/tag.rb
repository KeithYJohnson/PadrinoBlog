class Tag < ActiveRecord::Base
	belongs_to :post
	# has_many :post_tags
	# has_many :posts, :through => :post_tag
	def addtag
		self.name = "sleep"
	end

end
