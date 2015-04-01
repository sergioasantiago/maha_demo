class CreateConsultores < ActiveRecord::Migration
  def change
    create_table :consultores do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
