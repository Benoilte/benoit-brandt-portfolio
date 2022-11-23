import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  static targets = ["explication"]

  connect() {
    new Typed(this.explicationTarget, {
      strings: ["click on one experience to see the description"],
      typeSpeed: 50,
      loop: false
    })
  }
}
