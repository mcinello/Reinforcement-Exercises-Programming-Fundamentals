room_info = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}


# data is a hash
# rooms is data's FIRST hash, that is an array with hashes as elements

capacity_201 = room_info[:data][:rooms].first[:capacity]

puts capacity_201

event_201 = room_info[:data][:events].first

if event_201[:attendees] <= 50
  puts "Ok"
else
  puts "Not ok"
end
