class RemoveDistrictFromStates < ActiveRecord::Migration
  def change
  	remove_column :states, :district, :integer
  end
end
