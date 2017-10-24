Potluck.delete_all
User.delete_all

penn = User.create(email: "penn@gmail.com", username: "penn", password: "123456")
thomas = User.create(email: "thomas@gmail.com", username: "thomas", password: "123456")
david = User.create(email: "david@gmail.com", username: "david", password: "123456")
andres = User.create(email: "andres@gmail.com", username: "andres", password: "123456")
chris = User.create(email: "babybear@gmail.com", username: "chris", password: "123456")
amber = User.create(email: "amber@gmail.com", username: "amber", password: "123456")

p1 = Potluck.create(name: "Potluck Party", location: "DBC-Wall Street", starts_at: "2018-09-04 05:00:00 UTC", user: penn)
p1 = Potluck.create(name: "Potluck - Central Park", location: "Central Park East", starts_at: "2017-11-24 06:30:00 UTC", user: amber)
p1 = Potluck.create(name: "Hello World Party", location: "Pier 16, Fidi", starts_at: "2017-12-02 07:15:00 UTC", user: david)
p1 = Potluck.create(name: "DBC Potluck", location: "Andres House - Newark", starts_at: "2017-10-29 08:05:00 UTC", user: andres)
p1 = Potluck.create(name: "Alumni Potluck", location: "DBC-Wall Street", starts_at: "2017-10-25 12:00:00 UTC", user: thomas)
p1 = Potluck.create(name: "Game of Thrones Potluck", location: "Penn's Pad", starts_at: "2017-11-24 02:00:00 UTC", user: penn)
p1 = Potluck.create(name: "Potluck Party", location: "White Horse", starts_at: "2017-10-24 03:30:00 UTC", user: thomas)
p1 = Potluck.create(name: "We in the White House Party", location: "Mar a Lago", starts_at: "2017-10-25 05:00:00 UTC", user: david)
p1 = Potluck.create(name: "Penn's Sugarbabies Potluck", location: "DBC-Wall Street", starts_at: "2017-10-24 06:15:00 UTC", user: thomas)
p1 = Potluck.create(name: "Potluck....", location: "Greenwich, CT", starts_at: "2016-10-24 07:00:00 UTC", user: andres)
p1 = Potluck.create(name: "Party Party", location: "Toronto", starts_at: "2017-10-24 06:25:00 UTC", user: chris)
p1 = Potluck.create(name: "Potluck all up in here", location: "Boston", starts_at: "2016-10-24 07:30:00 UTC", user: thomas)
p1 = Potluck.create(name: "Potluck Party", location: "Charleston", starts_at: "2017-10-24 12:00:00 UTC", user: penn)
p1 = Potluck.create(name: "Potluck Time", location: "Miami", starts_at: "2017-10-24 06:30:00 UTC", user: david)
