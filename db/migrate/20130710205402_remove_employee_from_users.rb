class RemoveEmployeeFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :employee
  end

  def down
    add_column :users, :employee, :boolean
  end
end
