class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state
      t.integer :district

      t.timestamps
    end
  end
end
