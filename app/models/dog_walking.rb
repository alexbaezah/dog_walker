class DogWalking < ApplicationRecord
 
  belongs_to :user, required: false
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
  