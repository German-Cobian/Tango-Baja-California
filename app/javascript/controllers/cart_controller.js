import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cart"
export default class extends Controller {
  initialize() {
    const cart = JSON.parse(localStorage.getItem("cart"))
    if (!cart) {
      return
    }

    let total = 0
    for (let i=0; i < cart.length; i++) {
      const item = cart[i]
      total += item.price * item.quantity
      const div = document.createElement("div")
      const nameEl = document.createElement("p")
      nameEl.innerText =  `Articulo: ${item.name}`
      const priceEl = document.createElement("p")
      priceEl.innerText =  `$${item.price/100.0} `
      const quantityEl = document.createElement("p")
      quantityEl.innerText = `Cantidad: ${item.quantity}`
      const deleteButton = document.createElement("button")
      deleteButton.innerText = "Sacar del Carro"
      deleteButton.value = JSON.stringify({id: item.id})
      deleteButton.classList.add("btn", "btn-outline-danger", "mt-2", "mb-5", "py-0", )
      deleteButton.addEventListener("click", this.removeFromCart)
      div.appendChild(nameEl)
      div.appendChild(priceEl)
      div.appendChild(quantityEl)
      div.appendChild(deleteButton)
      this.element.prepend(div)
    }

    const totalEl = document.createElement("div")
    totalEl.innerText= `Total: $${total/100.0}`
    let totalContainer = document.getElementById("total")
    totalContainer.appendChild(totalEl)
   
  }

  clear() {
    localStorage.removeItem("cart")
    window.location.reload()
  }

  removeFromCart(event) {
    const cart = JSON.parse(localStorage.getItem("cart"))
    const values = JSON.parse(event.target.value)
    const {id} = values
    const index = cart.findIndex(item => item.id === id)
    if (index >= 0) {
      cart.splice(index, 1)
    }
    localStorage.setItem("cart", JSON.stringify(cart))
    window.location.reload()
  }

  checkout() {
    const cart = JSON.parse(localStorage.getItem("cart"))
    const payload = {
      authenticity_token: "",
      cart: cart
    }

    const csrfToken = document.querySelector("[name='csrf-token']").content

    fetch("/checkout", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": csrfToken
      },
      body: JSON.stringify(payload)
      }).then(response => {
        if (response.ok) {
          response.json().then(body => {
            window.location.href = body.url
          })
        } else {
          response.json().then(body => {
            const errorEl = document.createElement("div")
            errorEl.innerText = `Se dio un error en el procesamiento de su pedido. ${body.error}`
            let errorContainer = document.getElementById("errorContainer")
            errorContainer.appendChild(errorEl)
          })
        }
    })
  }
}
