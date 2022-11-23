json.array! @professional_experiences do |professional_experience|
  json.work_id professional_experience.id
  json.work_description professional_experience.description
  json.work_link professional_experience.link
end

json.array! @trainings do |training|
  json.training_id training.id
  json.training_description training.description
  json.training_link training.link
end
