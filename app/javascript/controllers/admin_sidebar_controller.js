import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="admin-sidebar"
export default class extends Controller {
  static targets = ["sidebar", "toggleButton"];

  connect() {
    console.log("connected")
    this.toggleButtonTarget.addEventListener("click", this.toggleSidebar.bind(this));
  }

  toggleSidebar() {
    console.log("clicked button")
    this.sidebarTarget.classList.toggle("open");
    this.updateButtonText();
  }

  updateButtonText() {
    console.log("updating text")
    const isOpen = this.sidebarTarget.classList.contains("open");
    console.log("Is Open:", isOpen);
    this.toggleButtonTarget.textContent = isOpen ? "x" : "+";
  }
}

