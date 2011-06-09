class Usuario < ActiveRecord::Base
	has_many :posts
	has_many :dietas
	has_many :rutinas
	belongs_to :user
end
