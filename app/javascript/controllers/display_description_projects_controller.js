import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-description-projects"
export default class extends Controller {
  static targets = ["descriptionText", "project", "projectDate", "iconContainer"]

  connect() {
    this.professionalProjectsData = [];
    this.personnalProjectsData = [];
    this.getJsonData()
  }

  getJsonData() {
    this.url = "/projects.json"
    fetch(this.url)
    .then(response =>response.json())
    .then(response =>response.forEach(data => {
      if(typeof data.professional_project_id !== "undefined") {
        this.professionalProjectsData.push(data);
      } else {
        this.personnalProjectsData.push(data)
      }
    }))
  }

  displayProjectDescription(event) {
    this.toggleProjectTargetClass(event)
    event.currentTarget.classList.add("highlight_link")
    event.currentTarget.classList.remove("underline-link")
    this.id = event.params.id
    this.section = event.params.section
    if(this.section === "professional"){
      this.professionalProject = this.professionalProjectsData.find(element => element.professional_project_id === this.id);
      console.log(this.professionalProjectId);
      this.description = this.professionalProject.professional_project_description;
      this.title = this.professionalProject.professional_project_title;
      this.startDate = this.professionalProject.professional_project_start_date;
      // this.endDate = this.professionalProject.professional_project_end_date;
      // this.duration = this.professionalProject.professional_project_duration;
      this.iconContainerTarget.removeAttribute("class");
      this.iconContainerTarget.classList.add(`${this.title.toLowerCase().replaceAll(" ", "-")}-project-icon`, `container-project-icon`)
      this.descriptionTextTarget.innerText = this.description
      // this.descriptionCompanyTarget.innerHTML = `<h1>${this.company}</h1>`
      // this.descriptionDateTarget.innerHTML = `<p><strong>from ${this.startDate} to ${this.endDate}</strong> ${this.duration}</p>`
    } else {
      this.personnalProject = this.personnalProjectsData.find(element => element.personnal_project_id === this.id);
      this.description = this.personnalProject.personnal_project_description;
      this.institution = this.personnalProject.personnal_project_title;
      this.startDate = this.personnalProject.personnal_project_start_date;
      // this.endDate = this.personnalProject.personnal_project_end_date;
      // this.duration = this.personnalProject.personnal_project_duration;
      this.descriptionTextTarget.innerText = this.description
      // this.descriptionCompanyTarget.innerHTML = `<h1>${this.institution}</h1>`
      // this.projectDateTarget.innerHTML = `<p><strong>from ${this.startDate} to ${this.endDate}</strong> ${this.duration}</p>`
    }
  }

  toggleProjectTargetClass(event) {
    this.projectTargets.forEach(element => {
      if(event.currentTarget !== element) {
        element.removeAttribute("class");
        element.classList.add("underline-link")
      }
    });
  }
}
