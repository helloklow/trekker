# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)

acadia = Park.create(name: "Acadia", location: "Maine", est: "1919", summary: "Crown Jewel of the North Atlantic Coast: Acadia is a 47,000-acre Atlantic coast recreation area primarily on Maine's Mount Desert Island. Its landscape is marked by woodland, rocky beaches and glacier-scoured granite peaks such as Cadillac Mountain, the highest point on the United States’ East Coast. Among the wildlife are moose, bear, whales and seabirds. The bayside town of Bar Harbor, with restaurants and shops, is a popular gateway.", pic: "https://i.postimg.cc/7ZmbsnsR/acadia.jpg") 
arches = Park.create(name: "Arches", location: "Utah", est: "1971", summary: "A Red-Rock Wonderland: Arches lies north of Moab in the state of Utah. Bordered by the Colorado River in the southeast, it’s known as the site of more than 2,000 natural sandstone arches, such as the massive, red-hued Delicate Arch in the east. Long, thin Landscape Arch stands in Devils Garden to the north. Other geological formations include Balanced Rock, towering over the desert landscape in the middle of the park.", pic: "https://i.postimg.cc/JnBnhVrw/arches.jpg")
badlands = Park.create(name: "Badlands", location: "South Dakota", est: "1978", summary: "An Ancient, Rugged Beauty: Badlands striking geologic deposits contain one of the world’s richest fossil beds. Its dramatic landscapes span layered rock formations, steep canyons and towering spires. Ancient mammals such as the rhino, horse, and saber-toothed cat once roamed here. The park’s 244,000 acres protect an expanse of mixed-grass prairie where bison, bighorn sheep, prairie dogs, and black-footed ferrets live today.", pic: "https://i.postimg.cc/vmTTpxCZ/badlands.jpg")
big_bend = Park.create(name: "Big Bend", location: "Texas", est: "1944", summary: "Splendid Isolation: There is a place in Far West Texas where night skies are dark as coal and rivers carve temple-like canyons in ancient limestone. Here, at the end of the road, hundreds of bird species take refuge in a solitary mountain range surrounded by weather-beaten desert. Tenacious cactus bloom in sublime southwestern sun, and diversity of species is the best in the country. Big Bend includes the entire Chisos Mountains and a large swath of the Chihuahuan Desert.", pic: "https://i.postimg.cc/2yR5bcy1/big-bend.jpg")
biscayne = Park.create(name: "Biscayne", location: "Florida", est: "1980", summary: "A Watery Wonderland: Biscayne encompasses the reefs, islands, and shoreline mangrove forest near the northern Florida Keys, protecting a rich combination of aquamarine waters, emerald islands, and fish-bejeweled coral reefs. Here too is evidence of 10,000 years of human history, from pirates and shipwrecks to pineapple farmers and presidents. Trekkers can boat, snorkel, camp, watch dolphins, turtles, and pelicans romp…or simply relax and take in the stunning bay.", pic: "https://i.postimg.cc/DzN0FyKd/biscayne.jpg")
black_cyn = Park.create(name: "Black Canyon of the Gunnison", location: "Colorado", est: "1999", summary: "Deep, Steep, and Narrow: Big enough to be overwhelming, still intimate enough to feel the pulse of time, Black Canyon exposes some of the steepest cliffs, oldest rock, and craggiest spires in North America. With two million years to work, the Gunnison River, along with the forces of weathering, has sculpted this vertical wilderness. Trails along the north and south rims view dramatic drops and the striated Painted Wall cliff, along with the occasional mule deer, elk, or golden eagle.", pic: "https://i.postimg.cc/qqsv8s6j/black-cyn.jpg")
bryce_cyn = Park.create(name: "Bryce Canyon", location: "Utah", est: "1928", summary: "Red Rocks, Pink Cliffs, and Endless Vistas: Bryce Canyon features the largest concentration of hoodoos, spire-shaped rock formations, found anywhere on Earth. These crimson-colored wonders defy description. Situated along a high plateau at the top of the Grand Staircase, the park's high elevations include numerous wildlife communities, fantastic dark skies, and geological wonders.", pic: "https://i.postimg.cc/BZHb907H/bryce-cyn.jpg")
canyonlands = Park.create(name: "Canyonlands", location: "Utah", est: "1964", summary: "A Lifetime of Exploration: Canyonlands contains a treasure trove of wilderness wonders. Countless canyons and unique buttes have been carved by the Colorado River and its tributaries over time. The rivers create four districts: The panoramic Island in the Sky, towering pinnacles of The Needles, remote canyons of The Maze, and the rivers themselves. All share a primitive desert atmosphere, but each offers different opportunities for sightseeing and adventure.", pic: "https://i.postimg.cc/ZKmRJMXg/canyonlands.jpg")
capitol_reef = Park.create(name: "Capitol Reef", location: "Utah", est: "1971", summary: "A Wrinkle on Earth: Located in the heart of Utah's red rock country, Capitol Reef is a hidden treasure filled with cliffs, canyons, domes, and bridges in the Waterpocket Fold, a geologic monocline (a wrinkle on the earth) extending almost 100 miles. Layers of golden sandstone, canyons, and striking rock formations mingle amidst white sandstone domes, with towering monoliths waiting to be explored to the north.", pic: "https://i.postimg.cc/76mwYkh9/capitol-reef.jpg")
carlsbad = Park.create(name: "Carlsbad Caverns", location: "New Mexico", est: "1930", summary: "Beauty and Wonder, Above and Below: High ancient sea ledges, deep rocky canyons, flowering cactus, and desert wildlife—treasures above the ground in the Chihuahuan Desert. Hidden beneath the surface are more than 119 caves, formed when sulfuric acid dissolved limestone leaving behind caverns of all sizes. Carlsbad Caverns also encompasses Rattlesnake Springs, a desert wetland, attracting reptiles along with hundreds of bird species.", pic: "https://i.postimg.cc/j22KDFJb/carlsbad.jpg")
channel_isld = Park.create(name: "Channel Islands", location: "California", est: "1980", summary: "Step Back in Time: Channel Islands encompasses five remarkable islands and their ocean environment, including scenic clifftps, caves, and rare Torrey pines. The islands preserve and protect a wealth of natural and cultural resources. Isolation over thousands of years has created unique animals, plants, and archeological resources found nowhere else on Earth and helped preserve a place where visitors can experience coastal southern California as it once was.", pic: "https://i.postimg.cc/KjWbBDng/channel-isld.jpg")
congaree = Park.create(name: "Congaree", location: "South Carolina", est: "2003", summary: "Home of Champions: Astonishing biodiversity exists in Congaree, the largest intact expanse of old growth bottomland hardwood forest remaining in the southeastern United States. Waters from the Congaree and Wateree Rivers sweep through the floodplain, carrying nutrients and sediments that nourish and rejuvenate this ecosystem and support the growth of national and state champion trees.", pic: "https://i.postimg.cc/HWvdqdfs/congaree.jpg")
crater_lake = Park.create(name: "Crater Lake", location: "Oregon", est: "1902", summary: "Deep Water and a Sleeping Volcano: Crater Lake inspires awe. Native Americans witnessed its formation 7,700 years ago, when a violent eruption triggered the collapse of Mount Mazama. Scientists marvel at its purity: fed by rain and snow, it’s the deepest lake in the USA and one of the most pristine on earth. Artists, photographers, and sightseers gaze in wonder at its blue water and stunning setting atop the Cascade Mountain Range.", pic: "https://i.postimg.cc/CLZSY9gC/crater-lake.jpg")
cuyahoga_vly = Park.create(name: "Cuyahoga Valley", location: "Ohio", est: "2000", summary: "A River Renewed: Though only a short distance from the urban areas of Cleveland and Akron, Cuyahoga Valley seems worlds away. The park is a refuge for native plants and wildlife, and provides routes of discovery for trekkers. The winding Cuyahoga River gives way to waterfalls, deep forests, rolling hills, and open farmlands. Walk or ride the Towpath Trail to follow the historic route of the Ohio and Erie Canal.", pic: "https://i.postimg.cc/dVrFZdDL/cuyahoga.jpg")
death_vly = Park.create(name: "Death Valley", location: "California", est: "1994", summary: "Hot, Dry, and Low: In this below-sea-level basin, steady drought and record summer heat make Death Valley a land of extremes. Yet, each extreme has a striking contrast. Towering peaks are frosted with winter snow. Rare rainstorms bring vast fields of wildflowers. Lush oases harbor tiny fish and refuge for wildlife and humans. This diverse expanse features a ghost town, colorful rocks, salt flats and mounds, and pine trees, offering a truly one-of-a-kind adventure.", pic: "https://i.postimg.cc/VL31N4fx/death-vly.jpg")
denali = Park.create(name: "Denali", location: "Alaska", est: "1917", summary: "More Than a Mountain: The third most isolated peak on Earth, Denali is six million acres of wild land, bisected by one ribbon of road. Trekkers along it see the relatively low-elevation taiga forest give way to high alpine tundra and snowy mountains, culminating in North America's tallest peak, 20,310' Denali. Wild animals large and small roam unfenced lands, living as they have for ages. Solitude, tranquility and wilderness await.", pic: "https://i.postimg.cc/9f2hdMq1/denali.jpg")
dry_tortugas = Park.create(name: "Dry Tortugas", location: "Florida", est: "1992", summary: "An Isolated Paradise: Almost 70 miles from Key West lies the remote Dry Tortugas. This 100-square mile park is mostly open water with seven small islands. Accessible only by boat or seaplane, the park is known the world over as the home of magnificent Fort Jefferson, picturesque blue waters, superlative coral reefs and marine life, and the vast assortment of bird life that frequents the area. Trekkers enjoy snorkling with sea turtles and diving at the historic 1875 Windjammer Wreck.", pic: "https://i.postimg.cc/3wZHnTXh/dry-tortugas.jpg")
everglades = Park.create(name: "Everglades", location: "Florida", est: "1947", summary: "Subtropical Wilderness: Everglades protects an unparalleled landscape that provides an important habitat for numerous rare and endangered species like the manatee, American crocodile, leatherback turtle, and the elusive Florida panther. This 1.5-million-acre wetland consists of coastal mangroves, sawgrass marshes, and pine flatwoods as well as an abundance of wildlife. Everglades is world-renowned, internationally protected area.", pic: "https://i.postimg.cc/50NWrRgC/everglades.jpg")
gates = Park.create(name: "Gates of the Arctic", location: "Alaska", est: "1980", summary: "Premier Wilderness: This vast landscape does not contain any roads or trails. Trekkers discover intact ecosystems where people have lived with the land for thousands of years. Wild rivers meander through glacier-carved valleys, caribou migrate along age-old trails, endless summer light fades into aurora-lit night skies of winter. It remains virtually unchanged except by the forces of nature.", pic: "https://i.postimg.cc/sX6CC4H0/gates.jpg")
gateway = Park.create(name: "Gateway Arch", location: "Missouri", est: "2018", summary: "Gateway to the West: The Gateway Arch reflects St. Louis' role in the Westward Expansion of the United States during the nineteenth century, nestled near the starting point of the Lewis and Clark Expedition. The park is a memorial to Thomas Jefferson's role in opening the West, to the pioneers who helped shape its history, and to Dred Scott who sued for his freedom in the Old Courthouse.", pic: "https://i.postimg.cc/6q2Y3qzc/gateway.jpg")
glacier = Park.create(name: "Glacier", location: "Montana", est: "1910", summary: "Crown of the Continent: Experience Glacier's pristine forests, alpine meadows, rugged mountains, and spectacular lakes. With over 700 miles of trails, Glacier is a hiker's paradise for adventurous trekkers seeking wilderness and solitude. Relive the days of old through historic chalets, lodges, and the famous Going-to-the-Sun Road. Encounter diverse wildlife from mountain goats to grizzly bears, and explore glacier-carved peaks and valleys running to the Canadian border.", pic: "https://i.postimg.cc/gk6F1RVN/glacier.jpg")
glacier_bay = Park.create(name: "Glacier Bay", location: "Alaska", est: "1980", summary: "Alaskan Wilderness: Covering 3.3 million acres of rugged mountains, dynamic glaciers, temperate rainforest, wild coastlines and deep sheltered fjords, Glacier Bay is a highlight of Alaska's Inside Passage and part of a 25-million acre World Heritage Site; one of the world’s largest international protected areas. From sea to summit, Glacier Bay offers limitless opportunities for adventure and inspiration.", pic: "https://i.postimg.cc/br4XsNhx/glacier-bay.jpg")
grand_cyn = Park.create(name: "Grand Canyon", location: "Arizona", est: "1919", summary: "A Dawn and Dusk Delight: Unique combinations of geologic color and erosional forms decorate a canyon that is 277 river miles long, up to 18 miles wide, and a mile deep. The Grand Canyon overwhelms the senses through its immense size. Layers of red rock reveal millions of years of geological history. Fraught with awe-inspiring viewpoints, the sweeping views are a phenomenon to behold, especially at sunrise and sunset. Trekkers can hike or ride to the canyon floor to become fully immersed in the exceptioinal surroundings.", pic: "https://i.postimg.cc/XNP62xCr/grand-cyn.jpg")
grand_teton = Park.create(name: "Grand Teton", location: "Wyoming", est: "1929", summary: "Mountains of the Imagination: Rising above a scene rich with extraordinary wildlife, pristine lakes, and alpine terrain, the Teton Range stands as a monument to the people who fought to protect it. These are mountains of the imagination. Mountains that led to the creation of this National Park where you can explore over two hundred miles of trails, float the Snake River, and enjoy the serenity of this remarkable environment.", pic: "https://i.postimg.cc/3x55hR97/grand-teton.jpg")
great_basin = Park.create(name: "Great Basin", location: "Nevada", est: "1986", summary: "Land of Surprising Diversity: From the 13,063-foot summit of Wheeler Peak, to the sage-covered foothills, Great Basin is a place to sample the stunning diversity of the larger Great Basin region. Trekkers can enjoy hiking alongside bighorn sheep.Partake of the solitude of the wilderness, walk among ancient bristlecone pines, bask in the darkest of night skies, and explore mysterious marble subterranean passages.", pic: "https://i.postimg.cc/nh48hJwm/great-basin.jpg")
great_sand = Park.create(name: "Great Sand Dunes", location: "Colorado", est: "2004", summary: "Dunes Among Diversity: Open day and night year round, the tallest dunes in North America are the centerpiece in a diverse landscape of grasslands, wetlands, conifer and aspen forests, alpine lakes, and tundra. Experience a starry sky on moonless nights, or a surreal walk on the dunes under bright full moonlight. Take in the trout and tundra wildlife amidst the alpine lakes, then experience the seasonal Medano Creek and beach created at the base of the dunes.", pic: "https://i.postimg.cc/tgpK1MLM/great-sand.jpg")
great_smoky = Park.create(name: "Great Smoky Mountains", location: "North Carolia/Tennessee", est: "1934", summary: "Wondrous Diversity of Life: Endless ridges of forest straddle the border between North Carolina and Tennessee in the Great Smoky Mountains. Known for its diversity of plant and animal life, the beauty of its ancient mountains, and the quality of its remnants of Southern Appalachian mountain culture, this is America's most visited National Park. Lush forests and an abundance of wildflowers bloom year-round. The mist-covered mountains house wondrous streams, rivers, and waterfalls to explore.", pic: "https://i.postimg.cc/Pxq0y8fb/great-smoky.jpg")
guadalupe = Park.create(name: "Guadalupe Mountains", location: "Texas", est: "1966", summary: "A Waiting Wilderness: Guadalupe Mountains protects the world's most extensive Permian fossil reef, the four highest peaks in Texas, an environmentally diverse collection of flora and fauna, and the stories of lives shaped through conflict, cooperation and survival. Experience mountains and canyons, desert and dunes, pinyon pine and Douglas-fir forests, night skies and spectacular vistas within a place unlike any other. ", pic: "https://i.postimg.cc/1zBLDKS5/guadalupe.jpg")
haleakala = Park.create(name: "Haleakala", location: "Hawaii", est: "1916", summary: "Rare and Sacred Landscape: This special place vibrates with stories of ancient and modern Hawaiian culture and protects the bond between the land and its people. The park also cares for endangered species, some of which exist nowhere else. Visit this special place and renew your spirit amid stark volcanic landscapes and sub-tropical rain forest with an unforgettable hike through the backcountry.", pic: "https://i.postimg.cc/cH52b46p/haleakala.jpg")
hawaii_volc = Park.create(name: "Hawaii Volcanoes", location: "Hawaii", est: "1916", summary: "Born of Fire and Sea: Hawai‘i Volcanoes protects some of the most unique geological, biological, and cultural landscapes in the world. Extending from sea level to the summit of Mauna Loa at 13,677 feet, the park encompasses the summits of two of the world's most active volcanoes, Kīlauea and Mauna Loa. Experience steam vents, the Halema'uma'u Crater, and follow the thick ferns to the Thurston Lava Tube.", pic: "https://i.postimg.cc/6qkSBjrz/hawaii-volc.jpg")
hot_springs = Park.create(name: "Hot Springs", location: "Arkansas", est: "1921", summary: "Hottest Springs in Town: Water. That's what first attracted people, and they have been coming here ever since to use these soothing thermal waters to heal and relax. Rich and poor alike came for the baths, and a thriving city built up around the hot springs. Together nicknamed The American Spa, Hot Springs today surrounds the north end of the city of Hot Springs, Arkansas. Discover a new type of natural calm.", pic: "https://i.postimg.cc/wMyZ88m7/hot-springs.jpg")
indiana_dunes = Park.create(name: "Indiana Dunes", location: "Indiana", est: "2019", summary: "Sands of Solitude: Indiana Dunes National Park hugs 15 miles of the southern shore of Lake Michigan and has much to offer. Whether you enjoy scouting for rare species of birds or flying kites on the sandy beach, the national park's 15,000 acres will continually enchant you.  Hikers will enjoy 50 miles of trails over rugged dunes, mysterious wetlands, sunny prairies, meandering rivers and peaceful forests.", pic: "https://i.postimg.cc/L8N9DW4f/indiana-dunes.jpg")
isle_royale = Park.create(name: "Isle Royale", location: "Michigan", est: "1940", summary: "Invitation to Superior Wilderness: Explore a rugged, isolated island, far from the sights and sounds of civilization. This car-free wilderness houses shipwreck dives, forests, lakes, and waterways where moose and wolves roam. Surrounded by Lake Superior, Isle Royale offers unparalleled solitude and adventures for backpackers, hikers, boaters, kayakers, canoeists and scuba divers. Amid stunning scenic beauty, you'll find opportunities for reflection and discovery, making memories that last a lifetime.", pic: "https://i.postimg.cc/J7S4yRKY/isle-royale.jpg")
joshua_tree = Park.create(name: "Joshua Tree", location: "California", est: "1994", summary: "Where Deserts Meet: Two distinct desert ecosystems, the Mojave and the Colorado, come together in the alien landscape of Joshua Tree. A fascinating variety of plants and animals make their homes in a land sculpted by strong winds and occasional torrents of rain. Dark night skies, a rich cultural history, and surreal geologic features add to the wonder of this vast wilderness. Explore otherwordly rock formations surrounded by twisted Joshua trees.", pic: "https://i.postimg.cc/CLDMk9Qh/joshua-tree.jpg")
katmai = Park.create(name: "Katmai", location: "Alaska", est: "1980", summary: "Brown Bear Haven: A landscape is alive underneath our feet, filled with creatures that remind us what it is to be wild. Katmai was established to protect the volcanically devastated region surrounding Novarupta and the Valley of Ten Thousand Smokes. Today, Katmai National Park and Preserve also protects 9,000 years of human history and important habitat for salmon and thousands of brown bears. It spans tundra, forests, lakes, and mountains.", pic: "https://i.postimg.cc/9QYWNZ2s/katmai.jpg")
kenai_fjords = Park.create(name: "Kenai Fjords", location: "Alaska", est: "1980", summary: "Mountains and Ice Meet Ocean: At the edge of the Kenai Peninsula lies a land where the ice age lingers. Nearly 40 glaciers flow from the Harding Icefield, Kenai Fjords' crowning feature. Wildlife thrives in icy waters and lush forests around this vast expanse of ice. Sugpiaq people relied on these resources to nurture a life entwined with the sea. Today, shrinking glaciers bear witness to the effects of our changing climate.", pic: "https://i.postimg.cc/q7BkfqMq/kenai-fjords.jpg")
kings_cyn = Park.create(name: "Kings Canyon", location: "California", est: "1940", summary: "Land of Giants: This dramatic landscape testifies to nature's size, beauty, and diversity. Huge mountains, rugged foothills, deep canyons, vast caverns, and the world's largest trees. Kings Canyon lies just beside Sequoia National Park in the southern Sierra Nevada east of the San Joaquin Valley. Weather varies by season and elevation, which ranges from 1,370' to 14,494'. Kings Canyon features Grant and Cedar Groves, meadows, towering granite canyon walls, Roaring River Falls, and Kings River.", pic: "https://i.postimg.cc/4xgf5wDz/kings-cyn.jpg")
kobuk_vly = Park.create(name: "Kobuk Valley", location: "Alaska", est: "1980", summary: "Wilderness Adventure: Caribou, sand dunes, the Kobuk River, Onion Portage are just some of the facets of Kobuk Valley, located roughly 25 miles north of the Arctic Circle. Half a million caribou migrate through, their tracks crisscrossing sculpted dunes. The Kobuk River is an ancient and current path for people and wildlife. For 9000 years, people came to Onion Portage to harvest caribou as they swam the river. Even today, that rich tradition continues.", pic: "https://i.postimg.cc/TPkTTxp9/kobuk-vly.jpg")
lake_clark = Park.create(name: "Lake Clark", location: "Alaska", est: "1980", summary: "Stunning Wilderness: Lake Clark National Park and Preserve is a land of stunning beauty. Volcanoes steam, salmon run, bears forage, and craggy mountains reflect in shimmering turquoise lakes. Here, too, local people and culture still depend on the land and water. The park protects a wide variety of ecosystems and virtually all major Alaskan animals, terrestrial and marine, may be seen in and around the park. Venture into the park to become part of the wilderness.", pic: "https://i.postimg.cc/zB65RkwH/lake-clark.jpg")
lassen = Park.create(name: "Lassen Volcanic", location: "California", est: "1916", summary: "Explore the Undiscovered: Lassen Volcanic is home to steaming fumaroles, meadows freckled with wildflowers, clear mountain lakes, and numerous volcanoes. Jagged peaks tell the story of its eruptive past while hot water continues to shape the land. Lassen Volcanic offers opportunities to discover the wonder and mysteries of volcanoes and hot water for trekkers. Take in the litter of lava rocks, explore hydrothermal sites with acres of bubbling mud pots, and wander forest trails that connect to the PCT.", pic: "https://i.postimg.cc/tTYpTc6H/lassen.jpg")
mammoth = Park.create(name: "Mammoth Cave", location: "Kentucky", est: "1941", summary: "Grand, Gloomy, and Peculiar: Mammoth Cave preserves the cave system and a part of the Green River valley and hilly country of south central Kentucky. This is the world's longest known cave system, with more than 400 miles explored. Early guide Stephen Bishop called the cave a grand, gloomy and peculiar place, but its vast chambers and complex labyrinths have earned its name; Mammoth.", pic: "https://i.postimg.cc/x8mQGbgx/mammoth.jpg")
mesa_verde = Park.create(name: "Mesa Verde", location: "Colorado", est: "1906", summary: "Preserving Pueblo Heritage: Mesa Verde was established in 1906 to preserve and interpret the archeological heritage of the Ancestral Pueblo people who made it their home for over 700 years, from 600 to 1300 CE. Today, the park protects nearly 5,000 known archeological sites, including 600 cliff dwellings. These sites are some of the most notable and best preserved in the United States.", pic: "https://i.postimg.cc/J4bmGZst/mesa-verde.jpg")
mt_rainier = Park.create(name: "Mount Rainier", location: "Washington", est: "1899", summary: "Icon on the Horizon: Ascending to 14,410 feet above sea level, Mount Rainier stands as an icon in the Washington landscape. An active volcano, Mount Rainier is the most glaciated peak in the contiguous U.S.A., spawning five major rivers. Subalpine wildflower meadows ring the icy volcano while ancient forest cloaks Mount Rainier’s lower slopes. Wildlife abounds in the park’s ecosystems, leaving endless discovery awaiting.", pic: "https://i.postimg.cc/v8xGwpMr/mt-rainier.jpg")
am_samoa = Park.create(name: "American Samoa", location: "American Samoa", est: "1988", summary: "Islands of Sacred Earth: The National Park of American Samoa is located in the heart of the South Pacific, a world of sights, sounds, and experiences found in no other National Park in the United States. Hike, snorkle, and enjoy this unique landscape and the welcoming people of American Samoa. Protecting the rich culture and natural resources of the Tutuila, Ofu, and Tau islands, this park features coral reefs, tropical rainforests, fruit bats.", pic: "https://i.postimg.cc/1t9yQtm4/am-samoa.jpg")
n_cascades = Park.create(name: "North Cascades", location: "Washington", est: "1968", summary: "Cascades are Calling: Less than three hours from Seattle, an alpine landscape beckons. Discover communities of life adapted to moisture in the west and recurring fire in the east. Explore a vast wilderness of jagged, conifer-clad peaks crowned by more than 300 glaciers. Listen to cascading waters in forested valleys. The park shelters grizzly bears and gray wolves, plus more than 200 bird species. Witness a landscape sensitive to the Earth's changing climate.", pic: "https://i.postimg.cc/t4pbPJ6k/n-cascades.jpg")
olympic = Park.create(name: "Olympic", location: "Washington", est: "1938", summary: "Discover Dignified Wilderness: With its incredible range of precipitation and elevation, diversity is the hallmark of Olympic. Encompassing nearly a million acres, the park protects a vast wilderness, thousands of years of human history, and several distinctly different ecosystems, including glacier-capped mountains, old-growth temperate rain forests, and over 70 miles of wild coastline. The summit is popular with climbers, hikers, and backpackers.", pic: "https://i.postimg.cc/tC0pq2CL/olympic.jpg")
petrified_forest = Park.create(name: "Petrified Forest", location: "Arizona", est: "1962", summary: "Petrified Wonder: To the south, the Petrified Forest's Rainbow Forest is full of colorful petrified wood. At the park's center are the petroglyphs of Newspaper Rock and the ruined village of Puerco Pueblo. To the north, the Painted Desert Inn, a 1930s adobe building, is a museum housing Hopi murals. Today, backcountry hikes are exploring new areas never open before, such as Red Basin and little known areas like the Martha's Butte.", pic: "https://i.postimg.cc/zG7rkNSr/petrified-forest.jpg")
pinnacles = Park.create(name: "Pinnacles", location: "California", est: "2013", summary: "Born of Fire: Some 23 million years ago multiple volcanoes erupted, flowed, and slid to form what would become Pinnacles. What remains is a unique landscape. Trekkers journey through chaparral, oak woodlands, and canyon bottoms. Hikers enter rare talus caves and emerge to towering rock spires teeming with life: prairie and peregrine falcons, golden eagles, and the inspiring California condor.", pic: "https://i.postimg.cc/vmmdqK36/pinnacles.jpg")
redwood = Park.create(name: "Redwood", location: "California", est: "1968", summary: "More Than Tall Trees: Most people know Redwood as home to the tallest trees on Earth. The parks also protect vast prairies, oak woodlands, wild river-ways, and nearly 40-miles of rugged coastline. For thousands of years people have lived in this verdant landscape. Together, the NPS and California State Parks are protecting these old-growth forests, beaches and grasslands along Northern California’s coast.", pic: "https://i.postimg.cc/XvD6Tgz1/redwood.jpg")
rocky_mtn = Park.create(name: "Rocky Mountain", location: "Colorado", est: "1915", summary: "On Top of the World: Rocky Mountain's 415 square miles encompass and protect spectacular mountain environments. Scenic roads crest at over 12,000 feet, with many overlooks to experience the subalpine and alpine worlds. Enjoy over 300 miles of hiking trails, wildflowers, wildlife, and starry nights. These mountains, forests, and alpine tundra feature aspen trees, lakes, rivers, waterfalls, and an abundance of rock climbing.", pic: "https://i.postimg.cc/wMDKRYTn/rocky-mtn.jpg")
saguaro = Park.create(name: "Saguaro", location: "Arizona", est: "1994", summary: "Western Majesty: Tucson, Arizona is home to the nation's largest cacti. The giant saguaro is the universal symbol of the American west. These majestic plants, found only in a small portion of the United States, are protected by Saguaro to the east and west of Tucson. Visit Signal Hill Trail, leading to petroglyphs of the ancient Hohokam people, along with these enormous cacti, silhouetted by the beauty of a magnificent desert sunset.", pic: "https://i.postimg.cc/FRM5KHmj/saguaro.jpg")
sequoia = Park.create(name: "Sequoia", location: "California", est: "1890", summary: "Bigger Than a Dream: Sequoia is adjacent to Kings Canyon National Park in California's southern Sierra Nevada mountains. It's known for its massive sequoia trees, notably the General Sherman Tree dominating the Giant Forest. The underground Crystal Cave features streams and striking rock formations. Moro Rock is a granite dome offering sweeping park views. Nearby is the Tunnel Tree, a toppled tree cut to accommodate the road.", pic: "https://i.postimg.cc/sfWCN79K/sequoia.jpg")
shenandoah = Park.create(name: "Shenandoah", location: "Virginia", est: "1935", summary: "Recreation and Re-Creation: Just 75 miles from the bustle of Washington, D.C., Shenandoah is an escape to recreation and re-creation. Cascading waterfalls, spectacular vistas, and quiet wooded hollows to take a hike, meander along Skyline Drive, or picnic with the family. 200,000 acres of protected lands are haven to deer, songbirds, black bears, and the night sky. Mostly forested, the park features some wetlands, waterfalls, and rocky peaks as well as a section of the Appalachian Trail.", pic: "https://i.postimg.cc/yYzC4xLK/shenandoah.jpg")
roosevelt = Park.create(name: "Theodore Roosevelt", location: "North Dakota", est: "1978", summary: "Honoring the Great: When Theodore Roosevelt came to Dakota Territory to hunt bison in 1883, he was a skinny, spectacled youngster. He never imagined how his adventure in this remote place would forever alter conservation policies through today. This park is a habitat for bison, elk and prairie dogs. The sprawling park has 3 sections, linked by the Little Missouri River. Featuring the colorful Painted Canyon and the Maltese Cross Cabin, President Roosevelt himself once lived here.", pic: "https://i.postimg.cc/nzjfZD8F/roosevelt.jpg")
virgin_isld = Park.create(name: "Virgin Islands", location: "U.S. Virgin Islands", est: "1956", summary: "America's Paradise: Virgin Islands is more than just beautiful beaches. Hike tropical forests to plantation ruins to learn about a time when sugar dominated the island. Visit the ancient petroglyphs carved by the Taino Indians. Snorkel the coral reefs to discover hidden marine life, including sea turtles. Two-thirds of the island of St. John is National Park, making it a unique destination for trekkers across the globe.", pic: "https://i.postimg.cc/W1NRzKRf/virgin-isld.jpg")
voyageurs = Park.create(name: "Voyageurs", location: "Minnesota", est: "1975", summary: "Water, Islands, and Horizons: With over 40% of the park being water, Voyageurs is a maze of interconnected water highways. To fully enjoy this water-based park, bring your own watercraft, reserve ahead, or take a ranger boat tour. Located in northern Minnesota near the Canadian border, Voyageurs covers a vast area also containing forests and the huge, island-dotted Rainy, Kabetogama and Namakan lakes.", pic: "https://i.postimg.cc/65LJ9KPv/voyageurs.jpg")
wind_cave = Park.create(name: "Wind Cave", location: "South Dakota", est: "1903", summary: "A Hidden World: Bison, elk, pronghorn antelope, and other wildlife roam the rolling prairie grasslands and forested hillsides of one of America's oldest National Parks. Below the remnant island of intact prairie sits Wind Cave, one of the longest and most complex caves in the world. Named for barometric winds at its entrance, this maze of passages is home to boxwork, which resembles honeycomb and is a unique formation rarely found elsewhere.", pic: "https://i.postimg.cc/q7q9X3vs/wind-cave.jpg")
st_elias = Park.create(name: "Wrangell-St. Elias", location: "Alaska", est: "1980", summary: "The Largest National Park: Wrangell St. Elias is a vast national park that rises from the ocean all the way up to 18,008 ft. At 13.2 million acres, the park is the same size as Yellowstone, Yosemite, and Switzerland combined. Within this wild landscape are many of the highest peaks in the U.S. and Canada. Enjoy camping, hiking, and mountain biking year-round. Keep an eye out for abundant wildlife, including wolves, bears, caribou, and sheep, in this rugged, beautiful landscape.", pic: "https://i.postimg.cc/htpkdrc4/st-elias.jpg")
yellowstone = Park.create(name: "Yellowstone", location: "Wyoming", est: "1872", summary: "Constant Change: In 1872, Yellowstone became the first National Park with its unique hydrothermal wonders. Yellowstone sits atop a volcanic hot spot and is primarily in Wyoming, partially entering Montana and Idaho. Experience dramatic canyons, alpine rivers, lush forests, hot springs, and gushing geysers, including its most famous, Old Faithful. The park is home to hundreds of animal species, including bears, wolves, bison, elk and antelope.", pic: "https://i.postimg.cc/vmKCPZ4p/yellowstone.jpg")
yosemite = Park.create(name: "Yosemite", location: "California", est: "1890", summary: "Majestic Monoliths: Not just a spectacular valley, but a shrine to human foresight and the tranquility of the High Sierra. First protected in 1864, Yosemite is best known for its waterfalls and granite monoliths, but within its nearly 1,200 square miles are deep valleys, grand meadows, ancient giant sequoias, a vast wilderness area, and much more. Rich with wildlife, black bears, bighorn sheep, mule deer, bobcats, and coyotes, among others, are an everyday part of life in the valley.", pic: "https://i.postimg.cc/4yDwhGSg/yosemite.jpg")
zion = Park.create(name: "Zion", location: "Utah", est: "1919", summary: "Explore Endless Chasms: Follow the paths where ancient native people and pioneers walked. Gaze up at massive sandstone cliffs of cream, pink, and red that soar into a brilliant blue sky. Experience wilderness in a narrow slot canyon. Zion’s unique array of plants and animals is enchanting. The Virgin River flows to the Emerald Pools, which feature waterfalls and a hanging garden. Explore endless chasms in a surreal and revitalizing experience.", pic: "https://i.postimg.cc/RFny2xfq/zion.jpg")

visit_a = Visit.create(date: "12/21/18", notes: "One of my favorite parks! Bear Lake is truly something special this time of year.", park_id: 50)
visit_b = Visit.create(date: "12/23/18", notes: "Wow. I don't know why it took me this long to visit Yosemite. What a magical place, definitely returning as soon as possible.", park_id: 60)
visit_c = Visit.create(date: "1/1/19", notes: "So many unique sights, Old Faithful was like nothing I've experienced anywhere else.", park_id: 59)
visit_d = Visit.create(date: "2/13/19", notes: "Great park, fantastic hiking. Thrilled by the sheer number of trails to explore.", park_id: 2)
visit_e = Visit.create(date: "4/22/19", notes: "One of the most timeless places I've ever visited. So peaceful and relaxing, not to mention how huge the park is.", park_id: 27)
visit_f = Visit.create(date: "5/21/19", notes: "Definitely an east coast gem. The coastline and lighthouse were particularly mesmerizing.", park_id: 1)
visit_g = Visit.create(date: "6/22/19", notes: "Never would have expected a park in Ohio, but Cuyahoga was awesome! The railroad trains were super fun and classy.", park_id: 14)
visit_h = Visit.create(date: "8/15/19", notes: "Definitely one of the most alien places I've ever seen! So many cool rock formations and hidden hikes.", park_id: 34)
visit_i = Visit.create(date: "9/1/19", notes: "Totally felt like I was a cowboy on the western frontier. The cacti were massive and the sunsets were unbeatable!", park_id: 51)
visit_j = Visit.create(date: "9/2/18", notes: "Such an overwhelming sight to behold. The Grand Canyon really gives you a sense of how small us humans are.", park_id: 23)
visit_k = Visit.create(date: "10/18/19", notes: "Very interesting park. Everything from mountains to sand dunes, which makes exploring a lot of fun.", park_id: 26)
visit_l = Visit.create(date: "10/28/19", notes: "Such a stunning landscape. Did some canyoneering and fell in love with slot canyons!", park_id: 61)
visit_m = Visit.create(date: "10/31/19", notes: "Tons of interesting rock formations. I'd love to camp out and do some astrophotography next time.", park_id: 7)
visit_n = Visit.create(date: "11/4/19", notes: "Another Utah classic. Absolutely loved the Needles and especially Mesa Arch.", park_id: 8)
visit_o = Visit.create(date: "12/1/19", notes: "Gorgeous to drive through, dusk is great. Not one of my top parks, but still worth a visit.", park_id: 9)
visit_p = Visit.create(date: "5/21/19", notes: "One of my favorite parks. I visit everytime I'm back home, such a great east coast vibe.", park_id: 1)
visit_q = Visit.create(date: "10/31/19", notes: "What an insane landscape! I'd love to do so much more exploring!", park_id: 7)
visit_r = Visit.create(date: "11/4/19", notes: "Honestly, just another desert park in my opinion. All of Utah's parks kind of blend together for me.", park_id: 8)
visit_s = Visit.create(date: "12/1/19", notes: "One of my favorites for hiking. I find it very serene and secluded for the most part.", park_id: 9)