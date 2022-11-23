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
                               description: "Upgrading printing machine",
                               location: "Mex",
                               start_date: Date.new(2022, 9, 1),
                               end_date: Date.new(2022, 9, 9),
                               link: "https://www.bobst.com/usen/products/gravure-printing-converting/gravure-printing-converting-lines/overview/machine/registronr-s-6100/",
                               user: User.last)

ProfessionalExperience.create!(title: "Teacher Assistant",
                               company: "Le Wagon",
                               description: "Learn code to new student",
                               location: "Nantes",
                               start_date: Date.new(2022, 9, 1),
                               end_date: Date.new(2022, 9, 9),
                               link: "https://www.lewagon.com/nantes",
                               user: User.last)

ProfessionalExperience.create!(title: "Personnal project",
                               company: "",
                               description: "renovate Peugeot J5 - Travel around europe",
                               location: "Europe",
                               start_date: Date.new(2022, 9, 1),
                               end_date: Date.new(2022, 9, 9),
                               link: "",
                               user: User.last)


# Training creation
puts "Training Creation"

Training.create!(title: "CFC Automaticien",
                 institution: "BOBST SA",
                 description: "Learn automation",
                 location: "Mex",
                 start_date: Date.new(2022, 9, 1),
                 end_date: Date.new(2022, 9, 9),
                 link: "",
                 user: User.last)

Training.create!(title: "Technical maturity",
                 institution: "CPNV",
                 description: "Master of technique",
                 location: "Yverdon-les-bains",
                 start_date: Date.new(2022, 9, 1),
                 end_date: Date.new(2022, 9, 9),
                 link: "",
                 user: User.last)

Training.create!(title: "Developer fullstack",
                 institution: "Le wagon",
                 description: "Learn to code",
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
