class CreateAdminCompanies < ActiveRecord::Migration
  def change
    create_table :admin_companies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
