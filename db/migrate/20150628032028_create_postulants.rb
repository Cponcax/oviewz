class CreatePostulants < ActiveRecord::Migration
  def change
    create_table :postulants do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :email

      t.timestamps null: false
    end
  end
end
