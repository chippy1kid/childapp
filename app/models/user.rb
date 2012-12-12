# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  first_name         :string(255)
#  last_name          :string(255)
#  email              :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  encrypted_password :string(255)
#

class User < ActiveRecord::Base
	#attr_accessor :encrypted_password
  attr_accessible :email, :first_name, :last_name, :password_digest, :password_confirmation, :password
  has_secure_password
  before_save :create_remember_token

  email_regex = /\A[\w\-+.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name, presence: true, length: { maximum: 50 } 
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: email_regex }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 5, maximum: 20}
  validates :password_confirmation, presence: true


  private

  	def create_remember_token
  		self.remember_token = SecureRandom.urlsafe_base64
  	end


	# before_save :encrypted_password

	# def has_password?(submitted_password)
	# 	encrypt_password == encrypt(submitted_password)
	# end

	# private 
	# 	def encrypt_password
	# 		self.salt = make_salt if new_record?
	# 		self.encrypt_password = encrypt(password)		
	# 	end

	# 	def encrypt(string)
	# 		secure_hash("#{salt}--#{string}")
	# 	end

	# 	def method_name
	# 		secure_hash("#{Time.now.utc}--#{password}")
	# 	end

	# 	def secure_hash(string)
	# 		Digest::SHA2.hexdigest(string)			
	# 	end
end
