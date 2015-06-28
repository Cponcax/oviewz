class Proceso < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :referees
  has_many :postulants
  
  
end
