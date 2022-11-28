puts "Cleaning previous seed"
Project.destroy_all
ProfessionalExperience.destroy_all
Training.destroy_all
Trip.destroy_all

# Project creation
puts "Project Creation"

Project.create!(title: "Next stop",
                description: "Have a good trip in public transport",
                link: "www.next-stop.fr",
                professional: true,
                start_date: Date.new(2022, 9, 1),
                end_date: Date.new(2022, 9, 9), user: User.last)

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
                               start_date: Date.new(2022, 9, 1),
                               end_date: Date.new(2022, 9, 9),
                               link: "https://www.bobst.com/usen/products/gravure-printing-converting/gravure-printing-converting-lines/overview/machine/registronr-s-6100/",
                               user: User.last)

ProfessionalExperience.create!(title: "Teacher Assistant",
                               company: "Le Wagon",
                               description: "Here again... I'm working on the description. Come back soon to have more information",
                               location: "Nantes",
                               start_date: Date.new(2022, 9, 1),
                               end_date: Date.new(2022, 9, 9),
                               link: "https://www.lewagon.com/nantes",
                               user: User.last)

ProfessionalExperience.create!(title: "Personnal project",
                               company: "",
                               description: "And also here... I'm working on the description. Come back soon to have more information",
                               location: "Europe",
                               start_date: Date.new(2022, 9, 1),
                               end_date: Date.new(2022, 9, 9),
                               link: "",
                               user: User.last)


# Training creation
puts "Training Creation"

Training.create!(title: "CFC Automaticien",
                 institution: "BOBST SA",
                 description: "Sorry I'm still working on the description. Come back soon to have more information",
                 location: "Mex",
                 start_date: Date.new(2022, 9, 1),
                 end_date: Date.new(2022, 9, 9),
                 link: "",
                 user: User.last)

Training.create!(title: "Technical maturity",
                 institution: "CPNV",
                 description: "definitely... I'm working on the description. Come back soon to have more information",
                 location: "Yverdon-les-bains",
                 start_date: Date.new(2022, 9, 1),
                 end_date: Date.new(2022, 9, 9),
                 link: "",
                 user: User.last)

Training.create!(title: "Developer fullstack",
                 institution: "Le wagon",
                 description: "it will be ready tognight !! I'm working on the description. Come back soon to have more information",
                 location: "Nantes",
                 start_date: Date.new(2022, 9, 1),
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
