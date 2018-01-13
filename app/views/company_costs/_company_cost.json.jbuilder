json.extract! cost, :name, :amount, :id

start_date = "#{cost[:start_date].strftime("%b %Y")}"
end_date = "#{cost[:end_date].strftime("%b %Y")}"
json.time_period "#{start_date} - #{end_date}"

