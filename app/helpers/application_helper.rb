module ApplicationHelper
  def calc_age(dog)
    age_in_days = Date.today - dog.birth_date;

    # Display age in weeks if less than 1 month old
    if (age_in_days < 28)
      age_in_weeks = age_in_days/7;
      pluralize(age_in_weeks.round, "week")

    # Display age in months if less than 1 year old
    elsif (age_in_days < 365)
      age_in_months = age_in_days/30;
      pluralize(age_in_months.floor, "month")

    # Display age in years if over 1 year old
    else
      age_in_years = age_in_days/365;
      pluralize(age_in_years.floor, "year")
    end
  end
end
