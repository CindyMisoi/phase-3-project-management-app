class AddColumnAuthorToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :author, :string
  end
end
