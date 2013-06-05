class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts

  def name
    first_name + " " + last_name
  end

end
