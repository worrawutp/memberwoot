import flatpickr from "flatpickr"
import 'flatpickr/dist/flatpickr.min.css'

document.addEventListener('turbolinks:load', function(){
  const fp = flatpickr('#member_birth_date', {})
})

