import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["fruitMenuShowButton", "fruitMenuTarget"]

  show() {
    this.fruitMenuShowButtonTarget.classList.add("hidden")
    this.fruitMenuContentTarget.classList.remove("hidden")
  }

  hide() {
    this.fruitMenuShowButtonTarget.classList.remove("hidden")
    this.fruitMenuContentTarget.classList.add("hidden")
  }
}
