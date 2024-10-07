class AdminUser < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    %w[id email created_at updated_at] # Specify the attributes you want to allow for searching
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
         
end
