class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :contact, :numericality => true,
                 :length => { :is => 10, :message => "Enter a 10 digit contact number" }
end
