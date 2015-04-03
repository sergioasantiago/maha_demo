class CreateAdminCompaniesConsultants < ActiveRecord::Migration
  def change
    create_table :admin_companies_consultants do |t|
      t.references :admin_company, index: true
      t.references :admin_consultant, index: true

      t.timestamps null: false
    end
    add_foreign_key :admin_companies_consultants, :admin_companies
    add_foreign_key :admin_companies_consultants, :admin_consultants
  end
end
