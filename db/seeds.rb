# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all

Product.create!([
  {id: 1, url: "http://www.amazon.com/Sticky-Note-Wrist-Watch-Pad/dp/B007W52RPM/ref=cm_cr_pr_product_top?ie=UTF8", description: "Now you can write a reminder to yourself on these wrist watch post it notes that you wear on your wrist like a regular watch or bracelet. Stay organized and quit poisoning your body with ink when writing self reminders on your arms, wrists, and hands.", price: 13, picture: "http://www.thisiswhyimbroke.com/images/sticky-note-wrist-watch.jpg", title: "Wrist Watch Post It Notes"},
  {id: 2, url: "http://www.amazon.com/Kikkerland-UM08M-PARENT-Samurai-Umbrella/dp/B001W9QUIE/ref=sr_1_3?ie=UTF8&qid=1431994969&sr=8-3&keywords=sword+umbrella", description: "When you need to stay safe from the rain but also want to keep your man ego intact, a sword handle umbrella is the only solution. With this samurai sword you’ll look like a rain impenetrable warlord / shogun / ninja daring the elements to take you on.", price: 28, picture: "http://ecx.images-amazon.com/images/I/51eWI-YRiKL._SL1102_.jpg", title: "Sword Handle Umbrella"},
  {id: 3, url: "http://stacksocial.com/sales/the-limited-edition-black-hawk-drone-hd-camera", description: "The Dark Knight of the sky! Fly through the air with the best introductory drone on the market and help keep your city safe. Insanely fun to fly, and able to capture some serious footage too! This drone is the size of your palm, has smooth flight controls, and can fly for about 10 minutes per charge.", price: 89, picture: "https://stacksocial-production.s3.amazonaws.com/assets/productshot1-image/1969/d447f1986551ea428234a846ae4217a1337795c8_main_hero_image.jpg", title: "Black Hawk Drone + HD Camera"},

    {id: 4, url: "http://www.urbanoutfitters.com/urban/catalog/productdetail.jsp?id=33942830", description: "A cardboard projector you say? No way. YES WAY! This genius invention lets you project things from the small screen of your phone onto the wall for easier viewing. Easy to assemble + easy to use, the projector also amplifies the sound. Compatible with most smartphones.", price: 28, picture: "http://images.urbanoutfitters.com/is/image/UrbanOutfitters/33942830_020_b?$xlarge$&defaultImage=", title: "Smartphone Projector"},

    {id: 5, url: "http://www.hutchpost.com/wp-content/uploads/2012/01/deadend.png", description:"You've looked at all our products, check back later!", price: 0, picture: "http://www.hutchpost.com/wp-content/uploads/2012/01/deadend.png", title: "You've looked at all the products"}

])


