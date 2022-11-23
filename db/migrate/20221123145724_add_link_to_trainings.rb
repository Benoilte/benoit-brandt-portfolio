class AddLinkToTrainings < ActiveRecord::Migration[7.0]
  def change
    add_column :trainings, :link, :string
  end
end
