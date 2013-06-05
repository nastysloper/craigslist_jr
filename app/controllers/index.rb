# get '/' do
#   # Look in app/views/index.erb
#   erb :categories
# end

get '/users' do
  @users = User.all 
  erb :user_index
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :user_id
end

post '/users' do
  # @user = User.create(params)
  # @user = User.create(:first_name => params[:first_name], :last_name => params[:last_name])
  @user = User.create(params.slice(:first_name, :last_name))

  redirect to('/users')
end

