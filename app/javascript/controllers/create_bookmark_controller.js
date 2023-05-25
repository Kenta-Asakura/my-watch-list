import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-bookmark"
export default class extends Controller {
  connect() {
    console.log('hello from create bookmark');
  }

  send(event) {
    event.preventDefault

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })
  }
}
