class User < ActiveRecord::Base
  has_many :carts
  belongs_to :current_cart, :class_name => "Cart"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :registerable, :rememberable

  def create_current_cart
    cart_new = carts.create
    self.current_cart_id = cart_new.id
    save
  end

  def delete_current_cart
    self.current_cart_id = nil
    save
  end
         
end
