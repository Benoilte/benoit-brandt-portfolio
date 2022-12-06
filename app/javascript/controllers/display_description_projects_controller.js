import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-description-projects"
export default class extends Controller {
  connect() {
    this.professionalProjectsData = [];
    this.personnalProjects = [];
    this.getJsonData()
    console.log(this.professionalProjectsData);
    console.log(this.personnalProjects);
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
}
