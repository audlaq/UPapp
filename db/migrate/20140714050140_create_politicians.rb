class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :image
      t.string :position1
      t.string :position2
      t.string :state
      t.string :district
      t.string :party
      t.integer :sworn_in
      t.string :person_defeated
      t.float :votes_w_party
      t.float :votes_vs_party
      t.float :abstains

      t.timestamps
    end
  end
end
