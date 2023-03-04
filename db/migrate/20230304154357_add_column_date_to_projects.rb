class AddColumnDateToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :date, :datetime
  end
end
