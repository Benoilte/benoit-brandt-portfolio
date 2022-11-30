json.array! @professional_experiences do |professional_experience|
  json.work_id professional_experience.id
  json.work_company professional_experience.company
  json.work_duration professional_experience.duration_in_words
  json.work_description professional_experience.description
  json.work_link professional_experience.link
end

json.array! @trainings do |training|
  json.study_id training.id
  json.study_institution training.institution
  json.study_duration training.duration_in_words
  json.study_description training.description
  json.study_link training.link
end
