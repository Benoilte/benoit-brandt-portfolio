class Project < ApplicationRecord
  include ActionView::Helpers::TextHelper
  
  belongs_to :user
  has_one_attached :photo

  def select_end_date
    end_date || Date.today
  end

  def duration_in_words
    duration_array = duration_years_months
    year_duration_in_word(duration_array[0]) + month_duration_in_word(duration_array[0], duration_array[1])
  end

  private

  def duration_years_months
    last_day = select_end_date
    diff_in_days = (last_day - start_date).to_i
    years = (diff_in_days / 365.25)
    years_floored = years.floor
    months = (years - years_floored) * 12
    [years_floored, months.round]
  end

  def year_duration_in_word(year)
    year.positive? ? pluralize(year, 'year') : ""
  end

  def month_duration_in_word(year, month)
    if year.positive? && month.positive?
      " and #{pluralize(month, 'month')}"
    elsif year.zero?
      pluralize(month, 'month')
    else
      ""
    end
  end
end
