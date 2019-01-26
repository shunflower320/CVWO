class Task < ApplicationRecord
	include Rails.application.routes.url_helpers
	has_many :taggings
	has_many :tags, through: :taggings, dependent: :destroy
	validates :title, presence: true, length: { minimum: 1 }

	def self.tagged_with(name)
		Tag.find_by!(name: name).tasks
  	end

	def tag_list=(names)
		self.tags = names.split(",").map do |name|
			Tag.where(name: name.strip).first_or_create!
		end
	end

	def tag_list
		self.tags.map(&:name).join(", ")
	end

	def tag_links
		self.tags.map(&:name).map{|tag| link_to tag, tag_path(tag)}.join(", ")
	end
end