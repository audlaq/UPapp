class RemoveStateFromPolitician < ActiveRecord::Migration
  def change
  		remove_column :politicians, :state, :string
  		add_column :politicians, :state_id, :integer
  end
end
