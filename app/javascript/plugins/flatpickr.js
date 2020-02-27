import flatpickr from "flatpickr"
import "flatpickr/dist/themes/material_green.css" // Note this is important!
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  enableTime: true,
  altInput: true
})
