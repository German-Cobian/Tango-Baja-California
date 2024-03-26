import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sidebar"
export default class extends Controller {
  static targets = ["sidebar", "toggleButton"];

  connect() {
    this.toggleButtonTarget.addEventListener("click", this.toggleSidebar.bind(this));
  }

  toggleSidebar() {
    this.sidebarTarget.classList.toggle("open");
    this.updateButtonText();
  }

  updateButtonText() {
    const isOpen = this.sidebarTarget.classList.contains("open");
    this.toggleButtonTarget.textContent = isOpen ? "x" : ">";
  }
}

