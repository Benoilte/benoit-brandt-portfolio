class ChangeProfessionnalExperienceToProfessionalExperience < ActiveRecord::Migration[7.0]
  def change
    rename_table :professionnal_experiences, :professional_experiences
  end
end
