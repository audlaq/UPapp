class ChangeDistrictInState < ActiveRecord::Migration
  def change
  	change_column :politicians, :district, :integer
  end
end
