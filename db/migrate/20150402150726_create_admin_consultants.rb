class CreateAdminConsultants < ActiveRecord::Migration
  def change
    create_table :admin_consultants do |t|
      t.string :name
      t.references :network, index: true

      t.timestamps null: false
    end
    add_foreign_key :admin_consultants, :admin_networks
  end
end
