import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    console.log("connected to menu controller");
  }

  // static targets = ["content", "showButton"];
  // show() {
  //   this.showButtonTarget.classList.add("hidden");

  //   this.contentTarget.classList.remove("hidden");
  //   // this.contentTarget.classList.remove("animate__slideOutRight");
  //   // this.contentTarget.classList.add("animate__slideInRight");
  // }

  // hide() {
  //   this.showButtonTarget.classList.remove("hidden");

  //   this.contentTarget.classList.add("hidden");
  //   // this.contentTarget.classList.add("animate__slideInRight");
  //   // this.contentTarget.classList.add("animate__slideOutRight");
  // }
}
