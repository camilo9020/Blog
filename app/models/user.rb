# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(100)
#  password_digest :string
#  name            :string(100)
#  twitter_handle  :string(50)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base


	has_secure_password validations: false
	has_many :posts
	has_many :comments
	validates :password_digest, presence: true
	validates :password_digest, length: {minimum:6} 
	validates :email, uniqueness: true, format: /@/
	validates :name, presence: true		


end
