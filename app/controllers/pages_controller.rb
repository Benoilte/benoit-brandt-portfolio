class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about]
  def home
    @professionalexperiences = ProfessionalExperience.all
    @trainings = Training.all
  end

  def about
  end
end
