#require_relative '../models/url.rb'



get '/' do
  erb :"static/index"
end

post "/createurl" do 
 	a = Url.create(long_url: params[:long_url])
 	a.shorten
 	a.save
 	redirect '/'
end

# get'/:short_url' do 

# end 

#convert and 

