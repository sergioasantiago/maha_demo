class CompaniesConsultant < ActiveRecord::Base
  belongs_to :company
  belongs_to :consultant
end