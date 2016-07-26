get '/' do
	erb :'users/index'
end

get '/users/new' do
	erb  :'/users/new'
end	

post '/users/new' do
	@user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
	redirect "/users/#{@user.id}"	
end

get "/users/:id" do
	@user = User.find_by(id: params[:id])

	erb :'users/show'
end	

get '/beach' do
	erb :'surf/beach'
end	

post '/' do
	@user = current_user
	@beach = Beach.find_by(location: params[:location])
	if session[:id] != nil
	@user.beaches << @beach
	end
	redirect "/beach"
			
end



