import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="media-upload"
export default class extends Controller {
  static targets = ["photographInput", "videoInput"];

  connect() {
    this.photographInputTarget.addEventListener('change', this.toggleInputs.bind(this))
    this.videoInputTarget.addEventListener('change', this.toggleInputs.bind(this))
  }

  toggleInputs() {
    if (this.photographInputTarget.files.length > 0) {
      this.videoInputTarget.disabled = true
    } else {
      this.videoInputTarget.disabled = false
    }

    if (this.videoInputTarget.files.length > 0) {
      this.photographInputTarget.disabled = true
    } else {
      this.photographInputTarget.disabled = false
    }
  }
}
