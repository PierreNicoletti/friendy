import "bootstrap";

//Navbar & Banner
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';
initUpdateNavbarOnScroll();
loadDynamicBannerText();

//Mapbox - Geocoding
// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

//Date picker
import "../plugins/flatpickr"

//Autocomplete
import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();
