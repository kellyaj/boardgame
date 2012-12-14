Game.destroy_all

games = [
  {
    :name => "Eclipse",
    :picture => "http://cf.geekdo-images.com/images/pic1173341_md.jpg",
    :category => "strategy"
  },

{
    :name => "Mage Knight",
    :picture => "http://cf.geekdo-images.com/images/pic1083380_md.jpg",
    :category => "thematic"
  },

{
    :name => "Tzolk'in: The Mayan Calendar",
    :picture => "http://cf.geekdo-images.com/images/pic1413480_md.jpg",
    :category => "strategy"
  },

{
    :name => "The Castles of Burgundy",
    :picture => "http://cf.geekdo-images.com/images/pic1176894.jpg",
    :category => "strategy"
  },

{
    :name => "Archipelago",
    :picture => "http://cf.geekdo-images.com/images/pic1292739_md.jpg",
    :category => "strategy"
  },

{
    :name => "Merchant of Venus",
    :picture => "http://cf.geekdo-images.com/images/pic1134632_md.jpg",
    :category => "thematic"
  },

{
    :name => "Agricola",
    :picture => "http://cf.geekdo-images.com/images/pic259085_md.jpg",
    :category => "strategy"
  },

{
    :name => "7 Wonders",
    :picture => "http://cf.geekdo-images.com/images/pic860217_md.jpg",
    :category => "strategy"
  },

{
    :name => "Twilight Struggle",
    :picture => "http://cf.geekdo-images.com/images/pic361592_md.jpg",
    :category => "strategy"
  },

{
    :name => "Through the Ages",
    :picture => "http://cf.geekdo-images.com/images/pic236169_md.jpg",
    :category => "strategy"
  },

{
    :name => "Lords of Waterdeep",
    :picture => "http://cf.geekdo-images.com/images/pic1116080_md.jpg",
    :category => "strategy"
  },

{
    :name => "Kingdom Builder",
    :picture => "http://cf.geekdo-images.com/images/pic1152359_md.jpg",
    :category => "strategy"
  },

{
    :name => "CO2",
    :picture => "http://cf.geekdo-images.com/images/pic1350204_md.jpg",
    :category => "strategy"
  },

{
    :name => "Clash of Cultures",
    :picture => "http://cf.geekdo-images.com/images/pic1351042_md.jpg",
    :category => "strategy"
  },

{
    :name => "Seasons",
    :picture => "http://cf.geekdo-images.com/images/pic1299390_md.jpg",
    :category => "strategy"
  },

{
    :name => "Dominion",
    :picture => "http://cf.geekdo-images.com/images/pic394356_md.jpg",
    :category => "strategy"
  },

{
    :name => "Myrmes",
    :picture => "http://cf.geekdo-images.com/images/pic1370050_md.jpg",
    :category => "strategy"
  },

{
    :name => "Ventura",
    :picture => "http://cf.geekdo-images.com/images/pic974442_md.jpg",
    :category => "strategy"
  },

{
    :name => "Keyflower",
    :picture => "http://cf.geekdo-images.com/images/pic1402797_md.jpg",
    :category => "strategy"
  },

{
    :name => "Suburbia",
    :picture => "http://cf.geekdo-images.com/images/pic1418335_md.jpg",
    :category => "strategy"
  },

{
    :name => "Ginkgopolis",
    :picture => "http://cf.geekdo-images.com/images/pic1412371_md.jpg",
    :category => "strategy"
  },

{
    :name => "A Game of Thrones",
    :picture => "http://cf.geekdo-images.com/images/pic1077906_md.jpg",
    :category => "strategy"
  },

{
    :name => "Village",
    :picture => "http://cf.geekdo-images.com/images/pic1115193_md.jpg",
    :category => "strategy"
  },

{
    :name => "Snowdonia",
    :picture => "http://cf.geekdo-images.com/images/pic1430858_md.jpg",
    :category => "strategy"
  },

{
    :name => "Super Dungeon Explore",
    :picture => "http://cf.geekdo-images.com/images/pic1001002_md.jpg",
    :category => "thematic"
  },

{
    :name => "Race for the Galaxy",
    :picture => "http://cf.geekdo-images.com/images/pic236327.jpg",
    :category => "strategy"
  },

{
    :name => "Twilight Imperium",
    :picture => "http://cf.geekdo-images.com/images/pic50404_md.jpg",
    :category => "strategy"
  },

{
    :name => "Power Grid",
    :picture => "http://cf.geekdo-images.com/images/pic173153_md.jpg",
    :category => "strategy"
  },

{
    :name => "Smash Up",
    :picture => "http://cf.geekdo-images.com/images/pic1269874_md.jpg",
    :category => "strategy"
  },

{
    :name => "Pandemic",
    :picture => "http://cf.geekdo-images.com/images/pic254416.jpg",
    :category => "strategy"
  },

{
    :name => "A Few Acres of Snow",
    :picture => "http://cf.geekdo-images.com/images/pic905905_md.jpg",
    :category => "strategy"
  },

{
    :name => "Dominant Species", 
    :picture => "http://cf.geekdo-images.com/images/pic784193_md.jpg",
    :category => "strategy"
  },

{
    :name => "Alien Frontiers",
    :picture => "http://cf.geekdo-images.com/images/pic866095_md.jpg",
    :category => "strategy"
  },

{
    :name => "Ora et Labora",
    :picture => "http://cf.geekdo-images.com/images/pic1165426_md.jpg",
    :category => "strategy"
  },

{
    :name => "Puerto Rico",
    :picture => "http://cf.geekdo-images.com/images/pic158548_md.jpg",
    :category => "strategy"
  },

{
    :name => "Glory to Rome",
    :picture => "http://cf.geekdo-images.com/images/pic1079512_md.png",
    :category => "strategy"
  },
{
    :name => "Stone Age",
    :picture => "http://cf.geekdo-images.com/images/pic1192695_md.jpg",
    :category => "strategy"
  },
{
    :name => "Le Havre",
    :picture => "http://cf.geekdo-images.com/images/pic447994_md.jpg",
    :category => "strategy"
  },
{
    :name => "Small World",
    :picture => "http://cf.geekdo-images.com/images/pic428828_md.jpg",
    :category => "strategy"
  },
{
    :name => "The Settlers of Catan",
    :picture => "http://cf.geekdo-images.com/images/pic268839_md.jpg",
    :category => "strategy"
  },
{
    :name => "Cosmic Encounter",
    :picture => "http://cf.geekdo-images.com/images/pic354780_md.jpg",
    :category => "strategy"
  },
{
    :name => "Summoner Wars",
    :picture => "http://cf.geekdo-images.com/images/pic923048_md.jpg",
    :category => "strategy"
  },
{
    :name => "Brass",
    :picture => "http://cf.geekdo-images.com/images/pic261878_md.jpg",
    :category => "strategy"
  },
{
    :name => "Polis: Fight for the Hegemony",
    :picture => "http://cf.geekdo-images.com/images/pic1032795_md.jpg",
    :category => "strategy"
  },
{
    :name => "Troyes",
    :picture => "http://cf.geekdo-images.com/images/pic750583_md.jpg",
    :category => "strategy"
  },
{
    :name => "Trajan",
    :picture => "http://cf.geekdo-images.com/images/pic1054375_md.jpg",
    :category => "strategy"
  },

{
    :name => "Terra Mystica",
    :picture => "http://cf.geekdo-images.com/images/pic1356616_md.jpg",
    :category => "strategy"
  },

{
    :name => "Android: Netrunner",
    :picture => "http://cf.geekdo-images.com/images/pic1324609_md.jpg",
    :category => "strategy"
  },

{
    :name => "Legendary",
    :picture => "http://cf.geekdo-images.com/images/pic1430769_md.jpg",
    :category => "thematic"
  },

{
    :name => "Horus Heresy",
    :picture => "http://cf.geekdo-images.com/images/pic709014_md.jpg",
    :category => "thematic"
  },

{
    :name => "King of Tokyo",
    :picture => "http://cf.geekdo-images.com/images/pic761434_md.jpg",
    :category => "thematic"
  },

{
    :name => "Robinson Crusoe",
    :picture => "http://cf.geekdo-images.com/images/pic1413154_md.jpg",
    :category => "thematic"
  },

{
    :name => "Mice and Mystics",
    :picture => "http://cf.geekdo-images.com/images/pic1312072_md.jpg",
    :category => "thematic"
  },

{
    :name => "Descent: Journeys in the Dark",
    :picture => "http://cf.geekdo-images.com/images/pic1180640_md.jpg",
    :category => "thematic"
  },

{
    :name => "Escape: The Curse of the Temple",
    :picture => "http://cf.geekdo-images.com/images/pic1255253_md.jpg",
    :category => "thematic"
  },

{
    :name => "Zombicide",
    :picture => "http://cf.geekdo-images.com/images/pic1196191_md.jpg",
    :category => "thematic"
  },

{
    :name => "Legends of Andor",
    :picture => "http://cf.geekdo-images.com/images/pic1405984_md.jpg",
    :category => "thematic"
  },

{
    :name => "Arkham Horror",
    :picture => "http://cf.geekdo-images.com/images/pic175966_md.jpg",
    :category => "thematic"
  },

{
    :name => "The Adventurers: The Pyramid of Horus",
    :picture => "http://cf.geekdo-images.com/images/pic1004119_md.jpg",
    :category => "thematic"
  },

{
    :name => "War of the Ring",
    :picture => "http://cf.geekdo-images.com/images/pic1215633_md.jpg",
    :category => "thematic"
  },

{
    :name => "The Cave",
    :picture => "http://cf.geekdo-images.com/images/pic1399091_md.jpg",
    :category => "thematic"
  },

{
    :name => "Battlestar Galactica",
    :picture => "http://cf.geekdo-images.com/images/pic354500_md.jpg",
    :category => "thematic"
  },

{
    :name => "Sentinels of the Multiverse",
    :picture => "http://cf.geekdo-images.com/images/pic1412514_md.png",
    :category => "thematic"
  },

{
    :name => "Galaxy Trucker",
    :picture => "http://cf.geekdo-images.com/images/pic486219_md.jpg",
    :category => "thematic"
  },

{
    :name => "Sherlock Holmes Consulting Detective",
    :picture => "http://cf.geekdo-images.com/images/pic162479_md.jpg",
    :category => "thematic"
  },

{
    :name => "Spartacus: A Game of Blood & Treachery",
    :picture => "http://cf.geekdo-images.com/images/pic1384992_md.jpg",
    :category => "thematic"
  },

{
    :name => "D-Day Dice",
    :picture => "http://cf.geekdo-images.com/images/pic1206256_md.jpg",
    :category => "thematic"
  },

{
    :name => "Mansions of Madness",
    :picture => "http://cf.geekdo-images.com/images/pic814011_md.jpg",
    :category => "thematic"
  },

{
    :name => "Space Alert",
    :picture => "http://cf.geekdo-images.com/images/pic384313_md.jpg",
    :category => "thematic"
  },

{
    :name => "Android",
    :picture => "http://cf.geekdo-images.com/images/pic400196_md.jpg",
    :category => "thematic"
  },

{
    :name => "Elder Sign",
    :picture => "http://cf.geekdo-images.com/images/pic1024923_md.jpg",
    :category => "thematic"
  },

{
    :name => "Flash Point",
    :picture => "http://cf.geekdo-images.com/images/pic1129370_md.jpg",
    :category => "thematic"
  },

{
    :name => "Runewars",
    :picture => "http://cf.geekdo-images.com/images/pic668215_md.jpg",
    :category => "thematic"
  },

{
    :name => "Defenders of the Realm",
    :picture => "http://cf.geekdo-images.com/images/pic649329_md.jpg",
    :category => "thematic"
  },

{
    :name => "Ghost Stories",
    :picture => "http://cf.geekdo-images.com/images/pic346825_md.jpg",
    :category => "thematic"
  },

{
    :name => "City of Horror",
    :picture => "http://cf.geekdo-images.com/images/pic1340620_md.jpg",
    :category => "thematic"
  },

{
    :name => "Star Trek: Fleet Captains",
    :picture => "http://cf.geekdo-images.com/images/pic1081488.jpg",
    :category => "thematic"
  },

{
    :name => "Earth Reborn",
    :picture => "http://cf.geekdo-images.com/images/pic746581_md.jpg",
    :category => "thematic"
  },

{
    :name => "Letters from Whitechapel",
    :picture => "http://cf.geekdo-images.com/images/pic924171_md.jpg",
    :category => "thematic"
  },

{
    :name => "Moongha Invaders: Mad Scientists and Atomic Monsters Attack the Earth!",
    :picture => "http://cf.geekdo-images.com/images/pic1434874_md.jpg",
    :category => "thematic"
  },

{
    :name => "Dungeons & Dragons: The Legend of Drizzt Board Game",
    :picture => "http://cf.geekdo-images.com/images/pic994268_md.jpg",
    :category => "thematic"
  },

{
    :name => "Last Night on Earth: The Zombie Game",
    :picture => "http://cf.geekdo-images.com/images/pic207777.jpg",
    :category => "thematic"
  },

{
    :name => "Magestorm",
    :picture => "http://cf.geekdo-images.com/images/pic977956_md.jpg",
    :category => "thematic"
  },

{
    :name => "Dungeon!",
    :picture => "http://cf.geekdo-images.com/images/pic1317045_md.jpg",
    :category => "thematic"
  },

{
    :name => "Merchants & Marauders",
    :picture => "http://cf.geekdo-images.com/images/pic738119_md.jpg",
    :category => "thematic"
  },

{
    :name => "Talisman",
    :picture => "http://cf.geekdo-images.com/images/pic332870_md.jpg",
    :category => "thematic"
  },

{
    :name => "Dungeon Petz",
    :picture => "http://cf.geekdo-images.com/images/pic1103979_md.jpg",
    :category => "thematic"
  },

{
    :name => "Runebound",
    :picture => "http://cf.geekdo-images.com/images/pic178189_md.jpg",
    :category => "thematic"
  },

{
    :name => "Age of Conan: The Strategy Board Game",
    :picture => "http://cf.geekdo-images.com/images/pic450412_md.jpg",
    :category => "thematic"
  },

{
    :name => "Claustrophobia",
    :picture => "http://cf.geekdo-images.com/images/pic570518_md.jpg",
    :category => "thematic"
  },

{
    :name => "Fortune and Glory: The Cliffhanger Game",
    :picture => "http://cf.geekdo-images.com/images/pic946736_md.jpg",
    :category => "thematic"
  },

{
    :name => "Saboteur",
    :picture => "http://cf.geekdo-images.com/images/pic172286_md.jpg",
    :category => "party"
  },

{
    :name => "Bananagrams",
    :picture => "http://cf.geekdo-images.com/images/pic503901_md.jpg",
    :category => "family"
  },

{
    :name => "Guillotine",
    :picture => "http://cf.geekdo-images.com/images/pic143139_md.jpg",
    :category => "family"
  },

{
    :name => "Alhambra",
    :picture => "http://cf.geekdo-images.com/images/pic174385_md.jpg",
    :category => "family"
  },

{
    :name => "Thunderstone",
    :picture => "http://cf.geekdo-images.com/images/pic544780.jpg",
    :category => "strategy"
  },

{
    :name => "Diplomacy",
    :picture => "http://cf.geekdo-images.com/images/pic288149.jpg",
    :category => "strategy"
  },

{
    :name => "Wits & Wagers",
    :picture => "http://cf.geekdo-images.com/images/pic521431_md.jpg",
    :category => "party"
  },

{
    :name => "Eminent Domain",
    :picture => "http://cf.geekdo-images.com/images/pic1160506_md.jpg",
    :category => "strategy"
  },

{
    :name => "Nightfall",
    :picture => "http://cf.geekdo-images.com/images/pic873009_md.jpg",
    :category => "strategy"
  },

{
    :name => "Ascension: Chronicle of the Godslayer",
    :picture => "http://cf.geekdo-images.com/images/pic1026779_md.jpg",
    :category => "strategy"
  },

{
    :name => "RoboRally",
    :picture => "http://cf.geekdo-images.com/images/pic249264_md.jpg",
    :category => "thematic"
  },

{
    :name => "Lost Cities",
    :picture => "http://cf.geekdo-images.com/images/pic194176_md.jpg",
    :category => "family"
  },

{
    :name => "Neuroshima Hex!",
    :picture => "http://cf.geekdo-images.com/images/pic263013_md.jpg",
    :category => "strategy"
  },

{
    :name => "San Juan",
    :picture => "http://cf.geekdo-images.com/images/pic174174_md.jpg",
    :category => "strategy"
  },

{
    :name => "Forbidden Island",
    :picture => "http://cf.geekdo-images.com/images/pic646458_md.jpg",
    :category => "family"
  },

{
    :name => "Blokus",
    :picture => "http://cf.geekdo-images.com/images/pic153979_md.jpg",
    :category => "abstract"
  },

{
    :name => "Quarriors!",
    :picture => "http://cf.geekdo-images.com/images/pic1063487_md.jpg",
    :category => "strategy"
  },

{
    :name => "Risk Legacy",
    :picture => "http://cf.geekdo-images.com/images/pic1196938.jpg",
    :category => "strategy"
  },

{
    :name => "Cards Against Humanity",
    :picture => "http://cf.geekdo-images.com/images/pic552658.jpg",
    :category => "party"
  },

{
    :name => "Citadels",
    :picture => "http://cf.geekdo-images.com/images/pic636868_md.jpg",
    :category => "strategy"
  },

{
    :name => "Acquire",
    :picture => "http://cf.geekdo-images.com/images/pic342163_md.jpg",
    :category => "strategy"
  },

{
    :name => "Caylus",
    :picture => "http://cf.geekdo-images.com/images/pic714825_md.jpg",
    :category => "strategy"
  },

{
    :name => "Memoir '44",
    :picture => "http://cf.geekdo-images.com/images/pic43663_md.jpg",
    :category => "war"
  },

{
    :name => "Dixit",
    :picture => "http://cf.geekdo-images.com/images/pic455883_md.jpg",
    :category => "party"
  },

{
    :name => "Tichu",
    :picture => "http://cf.geekdo-images.com/images/pic169494_md.jpg",
    :category => "strategy"
  },

{
    :name => "Hive",
    :picture => "http://cf.geekdo-images.com/images/pic791151_md.jpg",
    :category => "abstract"
  },

{
    :name => "Tigris & Euphrates",
    :picture => "http://cf.geekdo-images.com/images/pic168169_md.jpg",
    :category => "strategy"
  },

{
    :name => "Ticket to Ride",
    :picture => "http://cf.geekdo-images.com/images/pic38668_md.jpg",
    :category => "party"
  },

{
    :name => "Carcassonne",
    :picture => "http://cf.geekdo-images.com/images/pic166867_md.jpg",
    :category => "party"
  },

{
    :name => "The Resistance",
    :picture => "http://cf.geekdo-images.com/images/pic1392135_md.png",
    :category => "party"
  },

{
    :name => "Bang!",
    :picture => "http://cf.geekdo-images.com/images/pic1170986_md.jpg",
    :category => "party"
  },

{
    :name => "Zombie Dice",
    :picture => "http://cf.geekdo-images.com/images/pic617922_md.jpg",
    :category => "party"
  },

{
    :name => "Fluxx",
    :picture => "http://cf.geekdo-images.com/images/pic414362.jpg",
    :category => "party"
  },

{
    :name => "Apples to Apples",
    :picture => "http://cf.geekdo-images.com/images/pic213515_md.jpg",
    :category => "party"
  },

{
    :name => "Werewolf",
    :picture => "http://cf.geekdo-images.com/images/pic95263_md.jpg",
    :category => "party"
  },

{
    :name => "Taboo",
    :picture => "http://cf.geekdo-images.com/images/pic212946_md.jpg",
    :category => "party"
  },

{
    :name => "Set",
    :picture => "http://cf.geekdo-images.com/images/pic73045_md.jpg",
    :category => "abstract"
  },

{
    :name => "Tsuro",
    :picture => "http://cf.geekdo-images.com/images/pic262539.jpg",
    :category => "abstract"
  },

{
    :name => "Sorry!",
    :picture => "http://cf.geekdo-images.com/images/pic1187187_md.jpg",
    :category => "family"
  },

{
    :name => "Battleship",
    :picture => "http://cf.geekdo-images.com/images/pic288374_md.jpg",
    :category => "family"
  },

{
    :name => "Loaded Questions",
    :picture => "http://cf.geekdo-images.com/images/pic622237.jpg",
    :category => "party"
  },

{
    :name => "Pictionary",
    :picture => "http://cf.geekdo-images.com/images/pic336863.jpg",
    :category => "party"
  },

{
    :name => "Scrabble",
    :picture => "http://cf.geekdo-images.com/images/pic404651_md.jpg",
    :category => "party"
  },

{
    :name => "Catch Phrase",
    :picture => "http://cf.geekdo-images.com/images/pic173485_md.jpg",
    :category => "party"
  },

{
    :name => "Monopoly",
    :picture => "http://cf.geekdo-images.com/images/pic265476_md.jpg",
    :category => "family"
  },

{
    :name => "Boggle",
    :picture => "http://cf.geekdo-images.com/images/pic318943_md.jpg",
    :category => "party"
  },

{
    :name => "Balderdash",
    :picture => "http://cf.geekdo-images.com/images/pic40574_md.jpg",
    :category => "party"
  }

]



puts "Populating database with #{games.count} games."


Game.create games
