class Task < ApplicationRecord
	has_many :taggings
	has_many :tags, through: :taggings, dependent: :destroy
	validates :title, presence: true, length: { minimum: 1 }

	def tag_list=(names)
		self.tags = names.split(",").map do |name|
			Tag.where(name: name.strip).first_or_create!
		end
	end

	def tag_list
		tags.map(&name).join(", ")
	end
end
