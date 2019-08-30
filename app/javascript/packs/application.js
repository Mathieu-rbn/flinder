import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initHammer } from '../plugins/init_hammer';

initMapbox();
initHammer();

const flats = document.querySelectorAll('.flat-box');

const buttons = document.querySelectorAll('.like-btn');
console.log("Lese den Button aus")
// console.log(buttons)
buttons.forEach((btn) => {
  btn.addEventListener('click', (event) => {
    document.querySelector('.flat-box.active').remove();
    document.querySelectorAll('.flat-box')[0].classList.add('active');
    const flatId = event.currentTarget.dataset.flatId;
    const userId = event.currentTarget.dataset.userId;
    console.log(flatId);
    console.log (userId);
    return fetch(`/flats`)
    // Call backend to create a viewing
    // fetch
    // => /flats/:id/viewings/new
  })
})
