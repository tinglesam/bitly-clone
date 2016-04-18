require_relative '../../config/environments/init'
require_relative '../../config/environments/test'

class Url < ActiveRecord::Base

	def self.add_url (long)
		short = self.convert(long)
		Url.create(long_url: long, short_url: short)
	end

	def convert(long)
		CHARS = (('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a)		

		id = URL.find_by(long_url:long).id
  		s = ''
  		base = CHARS.length
		while id > 0
		    short << ALPHABET[id % base]
		    id /= base
	  	end
	  	
	  	short = "http://bit.ly/" + s.reverse

	end




	end
http://learnrubythehardway.org/book/ex46.html