import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  search() {
    const search = document.querySelector(`input[name="search"]`).value
    const pageTitle = this.data.get(search === "" ? "appTitle" : "pageTitle")

    document.title = pageTitle + search

    this.dispatch("reset")

    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.element.requestSubmit()
    }, 200)
  }
}
