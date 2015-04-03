class CreateCompaniesConsultants < ActiveRecord::Migration
  def change
    create_table :companies_consultants do |t|
      t.references :company, index: true
      t.references :consultant, index: true

      t.timestamps null: false
    end
    add_foreign_key :companies_consultants, :companies
    add_foreign_key :companies_consultants, :consultants
  end
end
