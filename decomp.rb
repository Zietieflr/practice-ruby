def get_week_pay(hours, standard_pay = 10)
  hours = hours > 60 ? 60 : hours
  over_time_hours = get_over_time_hours(hours)
  regular_hours = hours - over_time_hours
  over_time_pay = get_pay(over_time_hours, 1.5 * standard_pay)
  regular_pay = get_pay(regular_hours, standard_pay)
  format_dollar(regular_pay + over_time_pay)
end

def get_over_time_hours(hours)
  hours > 40 ? hours - 40 : 0
end

def get_pay(hours, dollars_per_hour)
  hours * dollars_per_hour
end

def format_dollar(money)
  '$' + '%.2f' % money
end
