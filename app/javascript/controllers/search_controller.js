import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  search() {
    const search = document.querySelector(`input[name="search"]`).value
    const select = document.querySelector(".button-select > span").textContent

    if (search === "" && select !== "All Accounts") {
      document.title = this.data.get("selectTitle") + select
    } else if (search !== "" && select === "All Accounts") {
      document.title = this.data.get("searchTitle") + search
    } else if (search !== "" && select !== "All Accounts") {
      document.title = this.data.get("selseaTitle").replace("{{select}}", select) + search
    } else {
      document.title = this.data.get("defaultTitle")
    }

    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      const selectInput = document.querySelector(`input[name="select"]`)
      this.element.appendChild(selectInput)

      this.element.requestSubmit()
    }, 200)
  }

  clear() {
    const searchInput = document.querySelector(`input[name="search"]`)
    searchInput.value = ""
  }
}
