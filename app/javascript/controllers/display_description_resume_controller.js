import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-description-resume"
export default class extends Controller {
  static targets = ["descriptionText", "experience"]
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

  displayDescription(event) {
    this.toggleExperienceTargetClass(event)
    event.currentTarget.classList.add("highlight_experience")
    event.currentTarget.classList.remove("underline-link")
    this.id = event.params.id
    this.section = event.params.section
    if(this.section === "work"){
      this.description = this.workData.find(element => element.work_id === this.id).work_description;
      this.descriptionTextTarget.innerText = this.description
    } else {
      this.description = this.studyData.find(element => element.study_id === this.id).study_description;
      this.descriptionTextTarget.innerText = this.description
    }
  }

  toggleExperienceTargetClass(event) {
    this.experienceTargets.forEach(element => {
      if(event.currentTarget !== element) {
        element.removeAttribute("class");
        element.classList.add("underline-link")
      }
    });
  }
}
