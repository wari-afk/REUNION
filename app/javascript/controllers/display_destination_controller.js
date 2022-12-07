import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-destination"
export default class extends Controller {
  static targets = ["card"]

  connect() {
    this.index = 0;
    this.cardTargets[this.index].classList.remove("d-none");
  }

  nextCard() {
    this.cardTargets[this.index].classList.add("d-none")
    if (this.index === this.cardTargets.length - 1) {
      this.index = 0;
      this.cardTargets[this.index].classList.remove("d-none");
    } else {
      this.index = this.index + 1;
      this.cardTargets[this.index].classList.remove("d-none");
    }
  }
}
