puts "Cleaning previous seed"
Project.destroy_all
ProfessionalExperience.destroy_all
Training.destroy_all
Trip.destroy_all

# Project creation
puts "Project Creation"

Project.create!(title: "feed my fish",
                description: "Air bnb clone in one week",
                link: "",
                professional: true,
                start_date: Date.new(2022, 8, 22),
                end_date: Date.new(2022, 8, 26),
                user: User.last)

Project.create!(title: "Next stop",
                description: "Have a good trip in public transport",
                link: "www.next-stop.fr",
                professional: true,
                start_date: Date.new(2022, 8, 27),
                end_date: Date.new(2022, 9, 9),
                user: User.last)

Project.create!(title: "Dahlia sante",
                description: "Toast UI integration with Rails 7 and stimulus",
                link: "www.dahlia-sante.fr",
                professional: true,
                start_date: Date.new(2022, 9, 9),
                now: true,
                user: User.last)

Project.create!(title: "My Portfolio",
                description: "Here you are to discover my work",
                link: "https://www.benoitbrandt.ch/",
                professional: true,
                start_date: Date.new(2022, 10, 1),
                now: true,
                user: User.last)

Project.create!(title: "Via Alpina",
                description: "3 weeks hiking across switzerland mountains",
                link: "",
                professional: false,
                start_date: Date.new(2020, 7, 19),
                end_date: Date.new(2020, 8, 7),
                user: User.last)

Project.create!(title: "Peugeot J5",
                description: "Full inside renovation of an old Peugeot J5",
                link: "",
                professional: false,
                start_date: Date.new(2021, 1, 1),
                end_date: Date.new(2021, 8, 31),
                user: User.last)

Project.create!(title: "farm renovation",
                description: "Help my father to renovate his old farm",
                link: "",
                professional: false,
                start_date: Date.new(2021, 6, 1),
                end_date: Date.new(2021, 9, 1),
                user: User.last)

Project.create!(title: "Kilimanjaro",
                description: "1 week hiking on the highest african mountain",
                link: "",
                professional: false,
                start_date: Date.new(2015, 9, 1),
                end_date: Date.new(2015, 9, 9),
                user: User.last)

Project.create!(title: "WorkAway",
                  description: "Different experiences to help people and discover new places",
                  link: "",
                  professional: false,
                  start_date: Date.new(2021, 10, 1),
                  end_date: Date.new(2022, 3, 31),
                  user: User.last)

# ProfessionalExperiences creation
puts "ProfessionalExperiences Creation"

ProfessionalExperience.create!(title: "Automaticien",
                               company: "Bobst SA",
                               description: "I worked as a field service technician at BOBST SA, one of the world’s leading suppliers of printing, flexible packaging, folding cartons, and corrugated board industries. \n
                               Most times, I had to perform missions abroad on customer sites, these missions could last a few days to a month or more. I was in charge of upgrading, managing the commissioning, training machine operators, and coordinating the commissioning, the production tests, and the restart in production with the customer.\n
                               Regularly, I had to train colleagues from other Bobst entities on the new Register products.\n
                               When I worked in Switzerland, I had to control the installation before sending it to the customer and was responsible for providing technical support to customers or colleagues.
                               ",
                               location: "Mex",
                               start_date: Date.new(2014, 8, 1),
                               end_date: Date.new(2021, 4, 30),
                               link: "https://www.bobst.com/usen/products/gravure-printing-converting/gravure-printing-converting-lines/overview/machine/registronr-s-6100/",
                               user: User.last)

ProfessionalExperience.create!(title: "Teacher Assistant",
                               company: "Le Wagon",
                               description: "After my bootcamp, I had the opportunity to be a teacher assistant. I was responsible for helping the new students complete their daily exercises and making sure they understood the subject of the day.",
                               location: "Nantes",
                               start_date: Date.new(2022, 10, 1),
                               end_date: Date.new(2022, 10, 30),
                               link: "https://www.lewagon.com/nantes",
                               user: User.last)

ProfessionalExperience.create!(title: "Personnal project",
                               company: "",
                               description: "After 10 years of challenging work, I decided to start a gap year to take time for personal projects and to think about how to re-orient my career path.\n
                               During this time, I renovated a 1992 Peugeot J5. New electrical wiring, a new water pump system, new interior insulation, a new LPG system, and new furnishings were all installed.\n
                               For two months, I helped my father renovate his old farm. I've done a wide range of construction work.\n
                               I traveled to Great Britain for two months to discover some new places and improve my English.\n
                               My girlfriend and I traveled around Brittany (France) with our dog and our Peugeot J5.
                               ",
                               location: "Europe",
                               start_date: Date.new(2021, 5, 1),
                               end_date: Date.new(2022, 7, 11),
                               link: "",
                               user: User.last)

ProfessionalExperience.create!(title: "Developer web self-learning",
                               company: "",
                               description: "Following \"Le Wagon\" bootcamp, I continued to practice and learn with various projects as my portfolio or through various learning platforms such as Codecademy, Codewars, or Codingame.",
                               location: "switzerland",
                               start_date: Date.new(2022, 9, 9),
                               now: true,
                               link: "https://www.lewagon.com/nantes",
                               user: User.last)

# Training creation
puts "Training Creation"

Training.create!(title: "Automaticien apprenticeship",
                 institution: "BOBST SA",
                 description: "practical work in the fields of mechanics, electricity, pneumatics, electronics, and logic systems.\n
                 the use of programming software.\n
                 assembly, commissioning, and troubleshooting of electrical installations.
                 ",
                 location: "Mex",
                 start_date: Date.new(2010, 8, 1),
                 end_date: Date.new(2014, 8, 1),
                 link: "",
                 user: User.last)

Training.create!(title: "Technical maturity",
                 institution: "CPNV",
                 description: "in parallel with my apprenticeship as an automation engineer, I passed my Technical maturity.",
                 location: "Yverdon-les-bains",
                 start_date: Date.new(2010, 8, 1),
                 end_date: Date.new(2014, 8, 1),
                 link: "",
                 user: User.last)

Training.create!(title: "Developer fullstack",
                 institution: "Le wagon",
                 description: "9-week full-time intensive coding bootcamp learning HTML, CSS, Bootstrap, JavaScript ES6, SQL, git, GitHub, Heroku, Ruby, and Ruby on Rails.
                 Designed, implemented, and shipped to production a clone of Airbnb and a Rails application group project.
                 ",
                 location: "Nantes",
                 start_date: Date.new(2022, 7, 11),
                 end_date: Date.new(2022, 9, 9),
                 link: "",
                 user: User.last)

# Trip creation
puts "Trip Creation"

Trip.create!(to_work: false,
             country: "france",
             start_date: Date.new(2022, 7, 11),
             end_date: Date.new(2022, 10, 21),
             user: User.last)
