// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap';
import "jquery"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

window.jQuery = $;
window.$ = $;

window.loadfile = (event) => {
  var output = document.getElementById('output');
  output.src = URL.createObjectURL(event.target.files[0]);
  output.onload = () => {
    $("#thumbnail-wrapper").show();
    URL.revokeObjectURL(output.src) // free memory
  }
}