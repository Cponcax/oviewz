class AddNameToProcesos < ActiveRecord::Migration
  def change
    add_column :procesos, :name, :string
  end
end
