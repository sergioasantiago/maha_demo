class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
