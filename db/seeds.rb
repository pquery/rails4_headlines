## db/seeds.db
#
# Taken from real headlines in 2013

u1 = User.create({email: 'admin@admin.com', first_name: 'admin', last_name: 'admin', password: 'password', password_confirmation: 'password', role: 'admin'})
u2 = User.create({email: 'editor_1@editor_1.com', first_name: 'Editor', last_name: 'One', password: 'password', password_confirmation: 'password', role: 'editor'})
u3 = User.create({email: 'editor_2@editor_2.com', first_name: 'Editor', last_name: 'Two', password: 'password', password_confirmation: 'password', role: 'editor'})

News.create!(title:'Bear Steals Entire Dumpster - Twice', news:'bear story', user_id: u2.id)
News.create!(title:'CarJacker Folied by his own Walker', news:'He couldn\'t make a fast getaway because it took him too long to load his walker into the stolen car!', user_id: u3.id)
News.create!(title:'Giant Purple Chicken Stolen', news:'Three men were arrested in Putnam County, Florida, for stealing a 9-foot-tall purple chicken')
News.create!(title:'Government Agency Smashed Computers to get Rid of Viruses', news:'The destruction not stopped - sparing $3 million of equiptment - because the agency had run out of money to pay for destroying the hardware.')
News.create!(title:'Chinese Zoo Displays Dog as Lion', news:'A private zoo in Luohe, Henan province, China, is under fire for trying to pass off a Tibetan mastiff, a particularly hairy dog, as an African lion.')
