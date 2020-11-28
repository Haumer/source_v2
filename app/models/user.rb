class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :dashboard
  after_create :create_default_dashboard

  def create_default_dashboard
    Dashboard.create(user: self)
  end
end
