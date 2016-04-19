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

get'/:short_url' do 
	url = Url.find_by short_url: params[:short_url]

	url.count
	url.save
	redirect url.long_url


end 



