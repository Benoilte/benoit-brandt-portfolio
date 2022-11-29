class AddNowToProfessionalExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :professional_experiences, :now, :boolean, default: false
  end
end
