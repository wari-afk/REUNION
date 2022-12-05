module ApplicationHelper
  def format_date_with_time(string_date)
    DateTime.parse(string_date).strftime("%b %e, %l:%M %p")
  end
end
