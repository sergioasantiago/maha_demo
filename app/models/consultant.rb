class Consultant < ActiveRecord::Base
  belongs_to :network
  has_many :companies, :through => :companies_consultants
  has_many :companies_consultants
end
