import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components';
import { loadDynamicBannerText } from '../components/banner';

initUpdateNavbarOnScroll();
loadDynamicBannerText();


//Mapbox - Geocoding

// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import "../plugins/flatpickr"
