import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  search() {
    const search = document.querySelector(`input[name="search"]`).value
    const pageTitle = this.data.get(search === "" ? "appTitle" : "pageTitle")

    document.title = pageTitle + search

    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      const selectInput = document.querySelector(`input[name="select"]`)
      this.element.appendChild(selectInput)

      this.element.requestSubmit()
    }, 200)
  }

  clear() {
    const pageTitle = this.data.get("appTitle")
    document.title = pageTitle

    const searchInput = document.querySelector(`input[name="search"]`)
    searchInput.value = ""
  }
}
