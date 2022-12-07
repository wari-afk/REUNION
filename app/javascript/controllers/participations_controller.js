import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["form"];
  connect() {
    console.log("part controller connected");
  }

  submitParticipations(event) {
    console.log("works");
    event.preventDefault();
    const url = this.formTarget.action;
    fetch(url, {
      method: "POST",
      headers: { Accept: "text/plain" },
      body: new FormData(this.formTarget),
    })
      .then((response) => response.text())
      .then((data) => {
        this.element.outerHTML = data;
      });
  }
}
