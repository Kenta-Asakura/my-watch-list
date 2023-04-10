import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-bookmark"
export default class extends Controller {
  static targets = ['form']

  connect() {
    console.log('hello from create');
  }

  create(event) {
    event.subm
    event.preventDefault()
  }
}
