# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pinpoint.destroy_all
Circle.destroy_all
Event.destroy_all
Subject.destroy_all
Day.destroy_all

day1 = Day.create(slider_id: 1, log_string: "December 20th, 1860")
day2 = Day.create(slider_id: 2, log_string: "January 9th, 1861")
day3 = Day.create(slider_id: 3, log_string: "February 9th, 1861")
day4 = Day.create(slider_id: 4, log_string: "March 4th, 1861")
day5 = Day.create(slider_id: 5, log_string: "April 12th, 1861")

sc_seccession = Event.create(title: "SC Secedes", info: "South Carolina hates America", link: "https://www.bl.uk/onlinegallery/onlineex/uscivilwar/timeline/timelinecivilwar.html")
ms_seccession = Event.create(title: "Mississippi is done", info: "Goodbye to Biloxi", link: "https://www.bl.uk/onlinegallery/onlineex/uscivilwar/timeline/timelinecivilwar.html")
davis_elected = Event.create(title: "Davis is elected President", info: "Big Jeff is in charge of the South", link: "https://www.bl.uk/onlinegallery/onlineex/uscivilwar/timeline/timelinecivilwar.html")
lincoln_inaug = Event.create(title: "Lincoln is inaugerated", info: "I don't think I spelled that correctly", link: "https://www.bl.uk/onlinegallery/onlineex/uscivilwar/timeline/timelinecivilwar.html")
b_fort_sumter = Event.create(title: "Battle of Fort Sumter", info: "Time to fight!", link: "https://www.bl.uk/onlinegallery/onlineex/uscivilwar/timeline/timelinecivilwar.html")

circle1 = Circle.create(event_id: sc_seccession.id, day_id: day1.id, lat: -80.997, long: 33.986)
circle2 = Circle.create(event_id: ms_seccession.id, day_id: day2.id, lat: -90.185, long: 32.299)
circle3 = Circle.create(event_id: davis_elected.id, day_id: day3.id, lat: -77.434, long: 37.538)
circle4 = Circle.create(event_id: lincoln_inaug.id, day_id: day4.id, lat: -77.037, long: 38.895)
circle5 = Circle.create(event_id: b_fort_sumter.id, day_id: day5.id, lat: -79.875, long: 32.753)

jefferson_davis = Subject.create(title: "Jefferson Davis", info: "Pres of the Confed", link: "http://www.digitalhistory.uh.edu/active_learning/explorations/south_secede/timeline_secession.cfm")
abraham_lincoln = Subject.create(title: "Abraham Lincoln", info: "Pres of the Union", link: "http://www.digitalhistory.uh.edu/active_learning/explorations/south_secede/timeline_secession.cfm")


jeff_day1 = Pinpoint.create(subject_id: jefferson_davis.id, day_id: day1.id, lat: -77.434, long: 37.538)
jeff_day2 = Pinpoint.create(subject_id: jefferson_davis.id, day_id: day2.id, lat: -77.434, long: 37.538)
jeff_day3 = Pinpoint.create(subject_id: jefferson_davis.id, day_id: day3.id, lat: -77.434, long: 37.538)
jeff_day4 = Pinpoint.create(subject_id: jefferson_davis.id, day_id: day4.id, lat: -77.434, long: 37.538)
jeff_day5 = Pinpoint.create(subject_id: jefferson_davis.id, day_id: day5.id, lat: -77.434, long: 37.538)

linc_day1 = Pinpoint.create(subject_id: abraham_lincoln.id, day_id: day1.id, lat: -77.037, long: 38.895)
linc_day2 = Pinpoint.create(subject_id: abraham_lincoln.id, day_id: day2.id, lat: -77.037, long: 38.895)
linc_day3 = Pinpoint.create(subject_id: abraham_lincoln.id, day_id: day3.id, lat: -77.037, long: 38.895)
linc_day4 = Pinpoint.create(subject_id: abraham_lincoln.id, day_id: day4.id, lat: -77.037, long: 38.895)
linc_day5 = Pinpoint.create(subject_id: abraham_lincoln.id, day_id: day5.id, lat: -77.037, long: 38.895)
