class AddUserIdToWorkspaces < ActiveRecord::Migration[5.2]
  def change
    add_column :workspaces, :user_id, :integer
  end
end
