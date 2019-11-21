
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  dateFormat: "d.m.Y",
  maxDate: '22/11/2001'
})

flatpickr("#range_start", {
  plugins: [new rangePlugin({ input: "#range_end"})],
  dateFormat: "d.m.Y",
  minDate: "today"
})
