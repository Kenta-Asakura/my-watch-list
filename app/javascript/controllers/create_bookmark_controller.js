import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-bookmark"
export default class extends Controller {
  static targets = ['bookmark']

  connect() {
    console.log(this.element);
    console.log(this.bookmarkTarget);
  }

  send(event) {
    event.preventDefault

    console.log("TODO: send request in AJAX")
  }
}
