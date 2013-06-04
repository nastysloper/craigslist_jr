class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  # Remember to create a migration!
end
