import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-description-resume"
export default class extends Controller {
  connect() {
    this.jsonData = [];
    this.getJsonData()
  }

  getJsonData() {
    this.url = "/professional_experiences.json"
    fetch(this.url)
    .then(response =>response.json())
    .then(response =>response.forEach(data => {
      this.jsonData.push(data);
    }))
  }

  displayDescription({ params: { id, section } }) {
    console.log(id);
    console.log(`${section}_description`);
  }
}
