class AddNowToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :now, :boolean, default: false
  end
end
