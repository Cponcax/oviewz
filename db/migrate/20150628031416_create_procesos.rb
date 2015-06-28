class CreateProcesos < ActiveRecord::Migration
  def change
    create_table :procesos do |t|
      t.string :description
      t.string :function
      t.string :workplace
      t.datetime :deadline
      t.string :email
      t.boolean :state
      t.string :color
      t.binary :company_logo

      t.timestamps null: false
    end
  end
end
