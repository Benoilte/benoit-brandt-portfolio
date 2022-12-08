import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-annecdotes-about"
export default class extends Controller {
  static targets = ["annecdoteIcon", "annecdoteText", "annecdoteSvg"]

  connect() {
  }

  displayAnnecdote(event) {
    this.category = event.params.category
    event.currentTarget.childNodes[1].childNodes[1].classList.add("circle-svg-selected")
    this.toggleProjectTargetClass(event)
    this.annecdoteTextTarget.innerText = `I will explain you something about ${this.category}`
  }

  toggleProjectTargetClass(event) {
    this.annecdoteIconTargets.forEach(element => {
      if(event.currentTarget !== element) {
        // element.removeAttribute("class");
        element.childNodes[1].childNodes[1].classList.remove("circle-svg-selected")
      }
    });
  }
}
