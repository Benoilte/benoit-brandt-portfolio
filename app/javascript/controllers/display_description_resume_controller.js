import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-description-resume"
export default class extends Controller {
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
      console.log(typeof data.work_id === "undefined");
      if(typeof data.work_id !== "undefined") {
        this.workData.push(data);
      } else {
        this.studyData.push(data)
      }
    }))
  }

  displayDescription({ params: { id, section } }) {
    console.log(id);
    console.log(`${section}_description`);
  }
}
