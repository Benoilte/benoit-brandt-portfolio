class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about]
  def home
  end

  def about
    @annecdotes_icons = %w[computer mountains hiking tennis beer book van world home]
  end
end
