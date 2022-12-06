import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "input"]

  connect() {
    console.log(this.formTarget)
    console.log(this.inputTarget)
  }
}


export default class extends Controller {
  static targets = ["form", "input"]

  revealContent() {
    this.contentTarget.classform.remove("")
  }
}

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["infos", "form"]

  displayForm() {
    this.infosTarget.classList.add("d-none")
    this.formTarget.classList.remove("d-none")
  }
}
