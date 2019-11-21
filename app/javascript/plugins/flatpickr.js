
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#range_start", {
  plugins: [new rangePlugin({ input: "#range_end"})],
  dateFormat: "d.m.Y",
  minDate: "today"
})
