import Hammer from 'hammerjs';


const initHammer = () => {
//   // Get a reference to an element.
//   const flat_card = document.querySelector('.flat_card');
//   const slideCount = 1;
//   // Create a manager to manage the element.
//   const manager = new Hammer.Manager(flat_card);

//   // Create a recognizer.
//   const Swipe = new Hammer.Swipe();

//   // Add the recognizer to the manager.
//   manager.add(new Hammer.Pan({ threshold: 10, pointers: 0 }));



//   // Subscribe to the event.
//   manager.on('pan', function(e) {
//     // console.log(e.direction);
//     if ((e.direction === 2) && (e.deltaX <= -250)) {
//       console.log(e);

//     }
//     else if (e.direction === 4)  {
//      console.log("rechts");
//     }
//     const percentage = 100 / slideCount * e.deltaX / window.innerWidth; // NEW: our % calc
//     flat_card.style.transform = 'translateX(' + percentage + '%)'; // NEW: our CSS transform
//     //console.log("You're panning me!");
//     //console.log(e);
//   });
}

export { initHammer };
