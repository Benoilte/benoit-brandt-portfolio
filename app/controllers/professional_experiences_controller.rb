class ProfessionalExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @professional_experiences = ProfessionalExperience.all
    @trainings = Training.all
  end
end
