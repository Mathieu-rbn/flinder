import Hammer from 'hammerjs';


const initHammer = () => {
  // Get a reference to an element.
  const flat_card = document.querySelector('.flat_card');

  // Create a manager to manage the element.
  const manager = new Hammer.Manager(flat_card);

  // Create a recognizer.
  const Swipe = new Hammer.Swipe();

  // Add the recognizer to the manager.
  manager.add(Swipe);

  // Declare global variables to swiped correct distance
  var deltaX = 0;
  var deltaY = 0;

  // Subscribe to the event.
  manager.on('swipe', function(e) {
    console.log("You're swipping manage!");
    console.log(e);
  });
}

export { initHammer };
