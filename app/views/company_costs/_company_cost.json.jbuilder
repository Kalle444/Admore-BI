json.extract! cost, :name, :id

start_date = "#{cost[:start_date].strftime("%b %Y")}"
end_date = "#{cost[:end_date].strftime("%b %Y")}"
json.time_period "#{start_date} - #{end_date}"
json.amount number_with_delimiter(cost[:amount])

