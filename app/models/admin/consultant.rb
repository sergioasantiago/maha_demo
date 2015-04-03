class Admin::Consultant < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  belongs_to :network
  has_many :companies, :through => :companies_consultants
  has_many :companies_consultants
end
