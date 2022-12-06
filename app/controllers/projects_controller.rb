class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @professional_projects = Project.where(professional: true)
    @personnal_projects = Project.where(professional: false)
  end
end
