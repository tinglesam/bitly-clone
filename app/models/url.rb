require 'securerandom'

class Url < ActiveRecord::Base
	
	 validates :long_url, format: {with: /http[s]?:\/\/[\w-]+\.\w{2,}/, message: "not a valid URL"}
	 validates :long_url, presence: {message: "URL is not present"}
	 validates :long_url, uniqueness: {message: "URL is not unique"}

	
	def shorten


		chars = SecureRandom.hex(3)
		self.short_url = chars
		self.click_count = 0
		# chars = (('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a)		
		
		# id = self.id
  		# s = ''
  		# base = chars.length
		# while id > 0
		#     s << chars[id % base]
		#     id /= base
	 #  	end
	  	
	 #  	self.short_url = s.reverse
	end

	def count
		self.click_count += 1
	end

end

