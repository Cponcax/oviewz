class AddUserIdToProcesos < ActiveRecord::Migration
  def change
    add_column :procesos, :user_id, :integer
  end
end
