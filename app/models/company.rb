class Company < ActiveRecord::Base
  has_many :consultants, :through => :companies_consultants
  has_many :companies_consultants
end
