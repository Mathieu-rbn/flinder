import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// import { initSweetalert } from '../plugins/init_sweetalert';
import swal from 'sweetalert';


import { initMapbox } from '../plugins/init_mapbox';
import { initHammer } from '../plugins/init_hammer';

initMapbox();
initHammer();

import flats from "../modules/flats"

const buttons = document.querySelectorAll('.like-btn');

if (buttons) {
  flats();
}

//

