import SingleFlat from "./single_flat";
function flats(){

const buttons = document.querySelectorAll('.like-btn');
console.log(buttons)
buttons.forEach((btn) => btn.addEventListener('ajax:success', handleFlats))

function handleFlats(event){
  // receive rails @flats, and matched from viewings#create
  const {matched, flats} = JSON.parse(event.detail[2].response)
//  console.log({matched})
   if(matched) {
    swal({
        title: "Flinder Time",
        text: "You got a match, isn't wonderful?",
        icon: "success",
        showConfirmButton: false,
        timer: 2000
      });
   }
   const flatsList = document.querySelector("#flats_partial_show");
   let html = ``;
  flats.forEach((flat, index) => {
    html+= SingleFlat(flat, index)
  })
  if(!flats) html = `<h1>no more flats</h1>`
  flatsList.innerHTML = html


const btns = document.querySelectorAll('.like-btn');
  btns.forEach((btn) => btn.addEventListener('ajax:success', handleFlats))
}
}

export default flats;

