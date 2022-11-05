class AddCompanyToProfessionalExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :professional_experiences, :company, :string
  end
end
