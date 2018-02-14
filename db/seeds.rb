# Supplier.create!([
#   {name: "Big Bob's Novelty Emporium", email: "bigbob@emporium.com", phone_number: "312-555-0864"},
#   {name: "Ted's Toys and Stuff", email: "ted@gmail.com", phone_number: "818-555-1357"},
#   {name: "Phil's Van Down By the River", email: "van4627@yahoo.com", phone_number: "444-van-dude"}
# ])

# Product.create!([
#   {name: "WNYX Mug", price: "1.50", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", supplier_id: 1},
#   {name: "Lightsaber", price: "270.10", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", supplier_id: 3},
#   {name: "Space Cowboy Laser Gun", price: "170.89", description: "This weapon has no other description than, Shiney!", supplier_id: 2},
#   {name: "DnD Dice set", price: "57.0", description: "Take down mighty dragons with this timeless set of 20 sided wonders", supplier_id: 1},
#   {name: "Hitchhiker's Guide to the Galexy", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", supplier_id: 1, price: 42.00 },
#   {name: "Sonic Screwdriver", price: "8.99", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", supplier_id: 3}
# ])

# Image.create!([
#   {url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png", product_id: 1},
#   {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", product_id: 2},
#   {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: 3},
#   {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 4},
#   {url: "http://www.notcot.com/images/guide.gif", product_id: 5},
#   {url: "https://dyn0.media.forbiddenplanet.com/products/28577492.jpg", product_id: 6},
#   {url: "https://lumiere-a.akamaihd.net/v1/images/Lightsaber_853fb596.jpeg?region=1%2C0%2C1444%2C812&width=768", product_id: 2},
#   {url: "https://ksr-ugc.imgix.net/assets/011/249/310/b80ad66b11f09e88161908bf726ed68c_original.jpg?crop=faces&w=1552&h=873&fit=crop&v=1465459663&auto=format&q=92&s=f93c49497b6ec22bd8e4c848c49a7d94", product_id: 2}
# ])


Category.create!(name: "Weapon")
Category.create!(name: "Tool")
Category.create!(name: "Game")

CategoryProduct.create!([
                          {category_id: 1, product_id: 2},
                          {category_id: 1, product_id: 3},
                          {category_id: 2, product_id: 1},
                          {category_id: 2, product_id: 2},
                          {category_id: 2, product_id: 6},
                          {category_id: 3, product_id: 3}
                
                        ])










