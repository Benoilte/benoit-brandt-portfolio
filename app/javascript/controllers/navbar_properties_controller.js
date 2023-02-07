import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar-properties"
export default class extends Controller {
  static values = { path: String }
  static targets = ["navbar", "title", "homeLink", "links"]
  connect() {
    this.setNavbar()
  }

  setNavbar() {
    if (this.pathValue === "/") {
      this.navbarTarget.classList.remove("navbar-benoilte-background")
      this.titleTarget.classList.add("navbar-brand-home")
      this.homeLinkTarget.classList.add("selected_link_home")
      this.linksTargets.forEach(link => {
        link.classList.add("underline-link-home")
        link.classList.add("underline-link-home")
      });
    }
  }

  updateNavbar(){
    if (window.scrollY >= (window.innerHeight - 55) && this.pathValue === "/") {
      this.navbarTarget.classList.add("navbar-benoilte-background")
      this.titleTarget.classList.remove("navbar-brand-home")
      this.homeLinkTarget.classList.remove("selected_link_home")
      this.linksTargets.forEach(link => {
        link.classList.remove("underline-link-home")
        link.classList.remove("underline-link-home")
      });
    } else {
      this.setNavbar()
    }
  }
}
