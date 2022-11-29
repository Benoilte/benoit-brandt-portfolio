class AddNowToTrainings < ActiveRecord::Migration[7.0]
  def change
    add_column :trainings, :now, :boolean, default: false
  end
end
