get '/posts/:category' do
  cat_id = params[:category]
  @cat = Category.find(cat_id)
  @posts = Post.where("category_id = #{cat_id}")
  erb :posts
end

