import { Controller } from "@hotwired/stimulus"
import Toastify from "toastify-js"
import { hello } from "../utils/console"

export default class extends Controller {
  connect() {
    console.log("connected")

    hello()

    Toastify({
      text: "This is a toast",
      duration: 3000
    }).showToast()
  }

  close() {
    this.element.remove()
  }

  disconnect() {
    console.log("disconnected")
  }
}