class CreateAdminNetworks < ActiveRecord::Migration
  def change
    create_table :admin_networks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
