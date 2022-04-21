import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["task", "completed"];

  connect() {
    // if (this.completedTarget.innerHTML == "true") {
    //   this.linkcompletedTarget.classList.add("completed");
    // }

  }
}
