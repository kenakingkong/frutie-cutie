import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menuContent", "menuForm"];

  search(event) {
    clearTimeout(this.timeout);
    this.timeout = setTimeout(() => {
      this.submitForm();
    }, 200);
  }

  submitForm() {
    this.menuFormTarget.requestSubmit();
  }

  close(e) {
    e.preventDefault();
    this.menuContentTarget.classList.add("animate__slideOutDown");
    this.menuContentTarget.addEventListener("animationend", (event) => {
      event.target.classList.add("hidden");
      Turbo.visit("/");
    });
  }

  select(event) {}
}
