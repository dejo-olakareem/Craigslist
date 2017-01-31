class User < ApplicationRecord

	has_many :created_articles, class_name: "Article", foreign_key: "creator_id"
	has_many :article_users
	has_many :articles, through: :article_users

	validates :username, :password, presence: true
	validates :email, presence: true, uniqueness: true

	has_secure_password
end
