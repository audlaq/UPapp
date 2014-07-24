class AddDateToWrittenStatements < ActiveRecord::Migration
  def change
    add_column :written_statements, :date, :datetime
  end
end
