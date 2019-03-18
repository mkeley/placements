class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments
  after_initialize do |user|
    puts "You have initialized an object!"
  end
 
  after_find do |user|
    puts "You have found an object!"
  end
end
 
#>> User.new
#You have initialized an object!
#=> #<User id: nil>
 
#>> User.first
#You have found an object!
#You have initialized an object!
#=> #<User id: 1>
#end
