import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-description-resume"
export default class extends Controller {
  static targets = ["descriptionText"]
  connect() {
    this.workData = [];
    this.studyData = [];
    this.getJsonData()
  }

  getJsonData() {
    this.url = "/professional_experiences.json"
    fetch(this.url)
    .then(response =>response.json())
    .then(response =>response.forEach(data => {
      if(typeof data.work_id !== "undefined") {
        this.workData.push(data);
      } else {
        this.studyData.push(data)
      }
    }))
  }

  displayDescription({ params: { id, section } }) {
    if(section === "work"){
      this.description = this.workData.find(element => element.work_id === id).work_description;
      this.descriptionTextTarget.innerText = this.description
    } else {
      this.description = this.studyData.find(element => element.study_id === id).study_description;
      this.descriptionTextTarget.innerText = this.description
    }
  }
}
