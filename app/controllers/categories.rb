get '/' do

  @categories = Category.all

  erb :categories
end


