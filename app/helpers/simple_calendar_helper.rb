module SimpleCalendarHelper
  def translate_month_to_spanish(month)
    formatted_month_string = month.strftime("%B")
    formatted_month_string.gsub(/#{Locale::SPANISH_MONTHS_C.keys.join("|")}/, Locale::SPANISH_MONTHS_C)
  end
   
  def translate_day_to_spanish(day)
    formatted_day_string = day.strftime("%A")
    formatted_day_string.gsub(/#{Locale::SPANISH_DAYS.keys.join("|")}/, Locale::SPANISH_DAYS)
  end
end