import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["fruitMenuShowButton", "fruitMenuContent", "fruitMenuItem"]

  show() {
    this.fruitMenuShowButtonTarget.classList.add("hidden")
    this.fruitMenuContentTarget.classList.remove("hidden")
  }

  hide() {
    this.fruitMenuShowButtonTarget.classList.remove("hidden")
    this.fruitMenuContentTarget.classList.add("hidden")
  }

  select(event) {
    this.hide()
  }
}
