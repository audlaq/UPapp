class RemoveDistrictFromState < ActiveRecord::Migration
  def change
  		remove_column :states, :district, :integer
  end
end
