get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions/new' do

  @user = User.find_by(email: params["email"])

  if @user && @user.password == params["password"]
    p "before" * 80
    p session
    login(@user)
    p "after" * 80
    p session
    
    redirect "/users/#{@user.id}"
    
  else
    @error = "Couldn't log in"
    erb :'/sessions/new'
  end
end

get '/logout' do
  logout
  p "You are logged out #{session.id}"
  redirect '/'
end