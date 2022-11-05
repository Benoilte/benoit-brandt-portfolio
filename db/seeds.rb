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
                               user: User.last)

# Training creation
puts "Training Creation"

Training.create!(title: "Le wagon",
                 description: "Learn to code",
                 location: "Nantes",
                 start_date: Date.new(2022, 9, 1),
                 end_date: Date.new(2022, 9, 9),
                 user: User.last)

# Trip creation
puts "Trip Creation"

Trip.create!(to_work: false,
             country: "france",
             start_date: Date.new(2022, 7, 11),
             end_date: Date.new(2022, 10, 21),
             user: User.last)
