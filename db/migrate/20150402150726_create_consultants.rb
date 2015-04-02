class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :name
      t.references :network, index: true

      t.timestamps null: false
    end
    add_foreign_key :consultants, :networks
  end
end
