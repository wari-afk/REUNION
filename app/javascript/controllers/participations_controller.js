import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["form"];

  static values = {
    reunionId: String,
  };

  submitParticipations(event) {
    event.preventDefault();
    const url = this.formTarget.action;
    fetch(url, {
      method: "POST",
      headers: { Accept: "text/plain" },
      body: new FormData(this.formTarget),
    })
      .then((response) => response.text())
      .then((data) => {
        const htmlMarkup = `<div class="container d-flex justify-content-center">
          <a class="btn-4" href="/reunions/${this.reunionIdValue}/date_options">Invite ready. Notify your friends!</a>
        </div>
        `;
        this.element.parentElement.insertAdjacentHTML("afterend", htmlMarkup);
        this.element.outerHTML = data;
      });
  }
}
