import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="start"
export default class extends Controller {
  connect() {
    // Get all images with class 'start'
    const images = document.querySelectorAll(".start");
    
    // Hide all images initially
    images.forEach(image => {
      image.classList.add("hidden");
    });
    
    // Initialize index to track the currently displayed image
    let index = 0;

    // Function to show next image after a delay
    const showNextImage = () => {
      // Show the current image
      images[index].classList.remove("hidden");

      // Increment index for the next iteration
      index++;

      // If all images are shown, redirect after a delay
      if (index === images.length) {
        setTimeout(() => {
          // Redirect to the home page
          window.location.href = "/home";
        }, 2000);
        return;
      }

      // Schedule the next image to be shown after a delay
      setTimeout(showNextImage, 2000);
    };

    // Start showing images
    showNextImage();
  }
}
