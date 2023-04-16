import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['form']

  connect() {
    console.log('hello from create');
  }

  submitForm() {
    const forms = document.querySelectorAll(".bookmark-btn")
    forms.forEach(form => {
      form.preventDefault();
    });
  }

  // submitForm() {
    //     btn.addEventListener("click", (e) => {
  //       e.preventDefault();
  //   });
  // }

  // submitForm() {
  //   const forms = document.querySelectorAll(".bookmark-btn")
  //   forms.forEach(form=> {
  //     form.addEventListener("click", (e) => {
  //             e.preventDefault();
  //           });
  //   });
  // }
}
