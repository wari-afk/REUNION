import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

// Connects to data-controller="tom-select"
export default class extends Controller {
  connect() {
    console.log("plugged in");
    new TomSelect(this.element,{
      persist: false,
      createOnBlur: true,
      create: true
    });
  }
}
