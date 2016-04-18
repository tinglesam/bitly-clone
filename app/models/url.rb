class Url < ActiveRecord::Base
	before_create :shorten 
	
	def shorten(long)
		CHARS = (('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a)		

		id = URL.find_by(long_url:long).id
  		s = ''
  		base = CHARS.length
		while id > 0
		    s << CHARS[id % base]
		    id /= base
	  	end
	  	
	  	short = "http://bit.ly/" + s.reverse
	  	return short 
	end

end
