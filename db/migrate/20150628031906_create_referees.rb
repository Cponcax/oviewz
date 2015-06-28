class CreateReferees < ActiveRecord::Migration
  def change
    create_table :referees do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :important

      t.timestamps null: false
    end
  end
end
