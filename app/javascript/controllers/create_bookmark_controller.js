// import { Controller } from "@hotwired/stimulus"

// // Connects to data-controller="create-bookmark"
// export default class extends Controller {
//   static targets = ["bookmark"]

//   connect() {
//     // console.log('HELLO!!!!');
//     console.log(this.element);
//     console.log(this.itemsTarget)
//     console.log(this.formTarget)
//   }

//   send(event) {
//     event.preventDefault();

//     console.log('AJAX request sent');
//     fetch(this.formTarget.action, {
//       method: "POST",
//       headers: { "Accept": "application/json" },
//       body: new FormData(this.formTarget)
//     })
//       .then(response => response.json())
//       .then((data) => {
//         console.log(data)
//       })
//   }
// }
