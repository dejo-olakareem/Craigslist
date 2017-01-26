class Article < ApplicationRecord
	belongs_to :category
	has_many :article_users
	has_many :users, through: :article_users

end
