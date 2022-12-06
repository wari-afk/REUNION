// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   static targets = ["input", "form"]

//   displayForm() {
//     this.infosTarget.classForm.add("d-none")
//     this.formTarget.classForm.remove("d-none")
//   }
// }

// update(event) {
//   event.preventDefault()
//   const url = this.formTarget.action
//   fetch(url, {
//     method: "PATCH",
//     headers: { "Accept": "text/plain" },
//     body: new FormData(this.formTarget)
//   })
//     .then(response => response.text())
//     .then((data) => {
//       console.log(data)
//     })
// }
