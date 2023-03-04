class DeleteColumnTitleFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :title , :string
  end
end
