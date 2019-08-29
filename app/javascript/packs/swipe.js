import Hammer from "hammerjs"


const flatcard = document.querySelector('#swipe_hammer');
// Create an instance of Hammer with the reference.
const hammer = new Hammer(flatcard);

// Create a manager to manager the element
const manager = new Hammer.Manager(flatcard);

// Create a recognizer
const Swipe = new Hammer.Swipe();

// Add the recognizer to the manager
manager.add(Swipe);

// Declare global variables to swiped correct distance



// Subscribe to a quick start event: press, tap, or doubletap.
// For a full list of quick start events, read the documentation.
hammer.on('swipe', (e) => {
  console.log(e);
});
