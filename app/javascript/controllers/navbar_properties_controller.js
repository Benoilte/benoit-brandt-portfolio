import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar-properties"
export default class extends Controller {
  connect() {
    console.log("welcom to the navbar properrties stimulus");
  }
}
