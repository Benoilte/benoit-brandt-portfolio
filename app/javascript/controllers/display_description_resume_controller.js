import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-description-resume"
export default class extends Controller {
  connect() {
    console.log("hello on montre qu'est-ce qu'on sait faire ?");
  }
}
