class CreateWrittenStatements < ActiveRecord::Migration
  def change
    create_table :written_statements do |t|
      t.string :statements
      t.text :body
      t.string :path
      t.integer :politician_id

      t.timestamps
    end
  end
end
