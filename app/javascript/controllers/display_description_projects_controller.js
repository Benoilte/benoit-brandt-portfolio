import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-description-projects"
export default class extends Controller {
  static targets = ["descriptionText", "project", "projectDate"]

  connect() {
    this.professionalProjectsData = [];
    this.personnalProjects = [];
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
        this.personnalProjects.push(data)
      }
    }))
  }

  displayProjectDescription(event) {
    this.toggleProjectTargetClass(event)
    event.currentTarget.classList.add("highlight_link")
    event.currentTarget.classList.remove("underline-link")
    this.id = event.params.id
    this.section = event.params.section
    if(this.section === "work"){
      this.workId = this.workData.find(element => element.work_id === this.id);
      this.description = this.workId.work_description;
      this.company = this.workId.work_company;
      this.startDate = this.workId.work_start_date;
      this.endDate = this.workId.work_end_date;
      this.duration = this.workId.work_duration;
      this.descriptionTextTarget.innerText = this.description
      this.descriptionCompanyTarget.innerHTML = `<h1>${this.company}</h1>`
      this.descriptionDateTarget.innerHTML = `<p><strong>from ${this.startDate} to ${this.endDate}</strong> ${this.duration}</p>`
    } else {
      this.studyId = this.studyData.find(element => element.study_id === this.id);
      this.description = this.studyId.study_description;
      this.institution = this.studyId.study_institution;
      this.startDate = this.studyId.study_start_date;
      this.endDate = this.studyId.study_end_date;
      this.duration = this.studyId.study_duration;
      this.descriptionTextTarget.innerText = this.description
      this.descriptionCompanyTarget.innerHTML = `<h1>${this.institution}</h1>`
      this.descriptionDateTarget.innerHTML = `<p><strong>from ${this.startDate} to ${this.endDate}</strong> ${this.duration}</p>`
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
