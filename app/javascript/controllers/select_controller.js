import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="select"
export default class extends Controller {
  toggle(event) {
    event.stopImmediatePropagation()

    const menu = toggleMenu()
    if (menu.classList.contains("active")) {
      document.addEventListener("keypress", closeMenuOnEscKeypress)
      document.addEventListener("click", closeMenu)
    } else {
      document.removeEventListener("keypress", closeMenuOnEscKeypress)
      document.removeEventListener("click", closeMenu)
    }
  }

  change(event) {
    const menu = document.querySelector(".menu-select")
    if (menu.classList.contains("active")){
      const button = event.target.closest(".option-select")
      const select = button.getAttribute("data-select")

      if (!button.classList.contains("active")) {
        const selectedOptionName = button.querySelector("span").textContent
        document.querySelector(".button-select > span").textContent = selectedOptionName

        const options = document.querySelectorAll(".option-select")
        options.forEach((option) => toggleSelectedOption(option, button === option))

        const selectInput = document.querySelector(`input[name="select"]`)
        selectInput.setAttribute("value", select)

        this.element.appendChild(selectInput)
        this.element.requestSubmit()

        this.dispatch("change")
      }
    } else {
      event.stopImmediatePropagation()
    }
  }
}

function closeMenuOnEscKeypress(event) {
  if (event.key == "Escape") {
    document.removeEventListener("keypress", closeMenuOnEscKeypress)
    document.removeEventListener("click", closeMenu)

    toggleMenu()
  }
}

function closeMenu(event) {
  const target = event.target
  if (target.matches(".button-select") || target.matches(".button-select > span") || !target.closest(".menu-select")) {
    document.removeEventListener("keypress", closeMenuOnEscKeypress)
    document.removeEventListener("click", closeMenu)

    toggleMenu()
  }
}

function toggleMenu() {
  const menu = document.querySelector(".menu-select")
  menu.classList.toggle("opacity-0")
  menu.classList.toggle("opacity-100")
  menu.classList.toggle("pointer-events-none")
  menu.classList.toggle("active")
  return menu
}

function toggleSelectedOption(option, alwaysToggle) {
  if (option.classList.contains("active") || alwaysToggle) {
      option.classList.toggle("active")

      const spans = option.querySelectorAll("span")
      spans[0].classList.toggle("font-medium")
      spans[1].classList.toggle("opacity-0")
      spans[1].classList.toggle("opacity-100")
  }
}
