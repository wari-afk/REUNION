import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="animation"
export default class extends Controller {
  static targets = ["screen", "hideOnAnimation"]

  loadingSpinner() {
    this.hideOnAnimationTarget.outerHTML = "";
    this.index = 0;
    this.screenTargets[this.index].classList.remove("d-none");

    setInterval(() => {
      this.nextAnimation()
    }, 3000)
  }

  nextAnimation() {
    this.screenTargets[this.index].classList.add("d-none");
    if (this.index + 1 === this.screenTargets.length) {
      this.index = 0;
      this.screenTargets[this.index].classList.remove("d-none");
    } else {
      this.index += 1;
      this.screenTargets[this.index].classList.remove("d-none");
    }
  }
}
