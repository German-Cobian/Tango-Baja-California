module EventsHelper
  def translate_to_spanish(date)
    formatted_date_string = date.strftime("%A, %-d de %B de %Y a las %H:%M %p")
    formatted_date_string.gsub(/#{Locale::SPANISH_MONTHS.keys.join("|")}/, Locale::SPANISH_MONTHS)
                         .gsub(/#{Locale::SPANISH_DAYS.keys.join("|")}/, Locale::SPANISH_DAYS)
  end
end
