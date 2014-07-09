class Post < ActiveRecord::Base
	validate :title, presence: true
	validate :body, presence: true

	has_many :comments
end
