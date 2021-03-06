train_info = [
  {train: "72C", frequency_in_minutes: 15, direction: "north"},
  {train: "72D", frequency_in_minutes: 15, direction: "south"},
  {train: "610", frequency_in_minutes: 5, direction: "north"},
  {train: "611", frequency_in_minutes: 5, direction: "south"},
  {train: "80A", frequency_in_minutes: 30, direction: "east"},
  {train: "80B", frequency_in_minutes: 30, direction: "west"},
  {train: "110", frequency_in_minutes: 15, direction: "north"},
  {train: "111", frequency_in_minutes: 15, direction: "south"}
]

direction_111 = ""
frequency_80B = 0
direction_610 = ""

north_trains = []
east_trains = []


# answers 1, 2, 3
train_info.each do |current_train|
  if current_train[:train] == "111"
    direction_111 = current_train[:direction]
  elsif current_train[:train] == "80B"
    frequency_80B = current_train[:frequency_in_minutes]
  elsif current_train[:train] == "610"
    direction_610 = current_train[:direction]
  end
end

# answer 4
train_info.each do |current_train|
  if current_train[:direction] == "north"
    north_trains.push current_train[:train]
  end
end

# answer 5
train_info.each do |current_train|
  if current_train[:direction] == "east"
    east_trains.push current_train[:train]
  end
end

# answer 6
def get_trains(trains, direction)
  train_list = []
  trains.each do |train|
    if train[:direction] == direction
      train_list.push train[:train]
    end
  end
  return train_list
end

north_trains = get_trains(train_info, "north")
east_trains = get_trains(train_info, "east")

puts north_trains
puts east_trains

# answer 7
train_info.first[:first_departure_time] = 5
puts train_info.first
