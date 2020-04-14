class ChangeColumnName < ActiveRecord::Migration[6.0]

  def change
    rename_column :categorizations, :fragile?, :fragile 
  end

end
