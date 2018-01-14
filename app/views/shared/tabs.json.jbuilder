# Making an array containing the different tabs.
# Every tab includes an tab.id (for react), two tab names
#and which tab is active (for adding the active class - see tabs.jsx)

id = 1

json.array! tabs do |tab|
  json.title [tab[0], tab[1]]
  json.active active
  json.id id
  id += 1
end

