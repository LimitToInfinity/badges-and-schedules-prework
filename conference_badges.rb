def badge_maker(name)
  return "Hello, my name is #{name}." 
end

def batch_badge_creator(attendees)
  attendees.collect { |n| badge_maker(n)}
end

def assign_rooms(attendees)
  attendees.collect { |n| "Hello, #{n}! You'll be assigned to room #{attendees.index(n).to_i + 1}!" }
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)
  badges.each { |n| puts n }
  rooms.each { |n| puts n }
end