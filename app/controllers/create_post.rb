get '/new_post' do
  @cat = Category.all
  erb :post_form

end

post '/create_new_post' do
  @cat = Category.all
  Post.create(:category_id=>params[:category_id],
              :description=>params[:description],
              :price=>params[:price],
              :title=>params[:title],
              :user_id=>1)
  erb :post_form
end
