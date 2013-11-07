class Post < ActiveRecord::Base
	belongs_to :category
	delegate :name, :to => :category, :prefix => true
	has_many :comments, dependent: :destroy
	validates :title, presence: true
end
