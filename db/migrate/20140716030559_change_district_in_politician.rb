class ChangeDistrictInPolitician < ActiveRecord::Migration
  def change
  	change_column :politicians, :district, :string
  end
end
