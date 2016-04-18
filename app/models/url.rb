require 'securerandom'

class Url < ActiveRecord::Base
	 
	
	def shorten


		chars = SecureRandom.hex(3)
		self.short_url = chars
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

end
