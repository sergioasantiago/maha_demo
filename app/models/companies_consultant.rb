class CompaniesConsultant
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  
  belongs_to :company
  belongs_to :consultant
end
