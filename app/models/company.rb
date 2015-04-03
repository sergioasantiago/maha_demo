class Company < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :consultants, :through => :companies_consultants
  has_many :companies_consultants
end
