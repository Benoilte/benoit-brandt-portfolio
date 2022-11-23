class AddLinkToProfessionalExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :professional_experiences, :link, :string
  end
end
