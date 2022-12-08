json.array! @professional_projects do |professional_project|
  json.professional_project_id professional_project.id
  json.professional_project_title professional_project.title
  json.professional_project_start_date professional_project.start_date.strftime("%d %B %Y")
  json.professional_project_end_date professional_project.select_end_date.strftime("%d %B %Y")
  json.professional_project_duration professional_project.duration_in_words
  json.professional_project_description professional_project.description
  json.professional_project_link professional_project.link
end

json.array! @personnal_projects do |personnal_project|
  json.personnal_project_id personnal_project.id
  json.personnal_project_title personnal_project.title
  json.personnal_project_start_date personnal_project.start_date.strftime("%d %B %Y")
  json.personnal_project_end_date personnal_project.select_end_date.strftime("%d %B %Y")
  json.personnal_project_duration personnal_project.duration_in_words
  json.personnal_project_description personnal_project.description
  json.personnal_project_link personnal_project.link
end
