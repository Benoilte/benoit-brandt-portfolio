class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home description about]
  def home
    # raise
  end

  def description
  end

  def about
    @annecdotes_icons = %w[computer mountains hiking tennis beer van world home]
  end
end
