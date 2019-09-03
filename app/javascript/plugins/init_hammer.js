import Hammer from 'hammerjs';
import $ from 'jquery';
import Rails from 'rails-ujs';


const initHammer = () => {
  // Get a reference to an element.
  const flat_card = document.querySelector('.flat_card');
  const slideCount = 1;
  const flatId = flat_card.dataset.flatId;
  // Create a manager to manage the element.
  const manager = new Hammer.Manager(flat_card);

  // Create a recognizer.
  const Swipe = new Hammer.Swipe();

  // Add the recognizer to the manager.
  manager.add(new Hammer.Pan({ threshold: 10, pointers: 0 }));



  // Subscribe to the event.
  manager.on('pan', function(e) {
    // console.log(e.direction);
    if ((e.direction === 2) && (e.deltaX <= -250)) {
      console.log("left");
      const url = `flats/${flatId}/viewings.json`;
      console.log(url);
      fetch(url, {
        method: 'POST',
        body: JSON.stringify({flats:1, viewing: {like: false}}),
        dataType: 'script',
        headers: {
          'Content-Type' : 'application/json',
          'X-CSRF-Token' : Rails.csrfToken()
        },
        credentials: 'same-origin'
      }).then(function(reponse) {
        return response.json();
      }).then(function(data) {
        console.log(data);
        location.reloud()
      })
    }
    else if (e.direction === 4){
     console.log("rechts");
     const url = `flats/${flatId}/viewings.json`;
     console.log(url);
     fetch(url, {
      method: 'POST',
      body: JSON.stringify({flats: 1, viewing: {like: true}}),
      dataType: 'script',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': Rails.csrfToken()
      },
      credentials: 'same-origin'
      }).then(function(response) {
      return response.json();
      }).then(function(data) {
      console.log(data);
      location.reload()
    });
     // Rails.ajax({
     //  type: 'POST',
     //  dataType: 'json',
     //  url: url,
     //  data: JSON.stringify({flats: 1, viewing: {like: true}}) ,
     //  success: function(data) { console.log('success', data)},
     //  error: function(data) { console.log('error', data)}
     // })
     // fetch(url, {
     //  method: "POST",
     //  headers: {
     //    'X-CSRF-Token': Rails
     //  }
     //  body: JSON.stringify({flats: 1, viewing: {like: true}})
     // }).then((response) => response.json()).then((data) => console.log(data))
     // $.get('/flats', dataType: "json", function(data) {
     //  console.log(data);
     // });

     // $.ajax({
     //  type: 'POST',
     //  url: '/flats',
     //  data:{flats: flats, viewing: {like: true}}
     // })
    }
    const percentage = 100 / slideCount * e.deltaX / window.innerWidth; // NEW: our % calc
    flat_card.style.transform = 'translateX(' + percentage + '%)'; // NEW: our CSS transform
    //console.log("You're panning me!");
    //console.log(e);
  });
}

export { initHammer };

