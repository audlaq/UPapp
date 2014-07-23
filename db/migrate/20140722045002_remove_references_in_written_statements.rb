class RemoveReferencesInWrittenStatements < ActiveRecord::Migration
  def change
	remove_column :written_statements, :references
  end
end
