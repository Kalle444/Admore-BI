class AddColumnToCosts < ActiveRecord::Migration[5.1]
  def change
    add_column :costs, :number_of_assignees, :integer
  end
end
