import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-annecdotes-about"
export default class extends Controller {
  static targets = ["annecdoteIcon", "annecdoteText"]

  connect() {
    // console.log("Hello ! Tell me about your best annecdotes");
    // console.log(this.annecdoteIconTargets);
  }

  displayAnnecdote(event) {
    this.category = event.params.category
    this.annecdoteTextTarget.innerText = `I will explain you something about ${this.category}`
  }
}
