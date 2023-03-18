import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["source"];
  static classes = ["in", "out"];

  in() {
    this.sourceTarget.classList.remove(this.outClass);
    this.sourceTarget.classList.add(this.inClass);
  }

  out() {
    this.sourceTarget.classList.remove(this.inClass);
    this.sourceTarget.classList.add(this.outClass);
  }
}
