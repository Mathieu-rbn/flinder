const SingleFlat = (flat, index) => {
return  `
<div class="uk-card uk-card-default uk-width-1-2@m uk-box-shadow-small flat-box  ${index == 0 ? 'active' : '' }">
    <div class="uk-card-media-top uk-border-rounded">

    <img data-src="${flat.photo}" width="400" style="height: 350px" alt="${flat.title}" class="uk-border-rounded" uk-img >
    </div>

    <div>
      <h4 class="uk-margin-small-left uk-card-title uk-margin-top uk-margin-remove-bottom">${flat.title}</h4>
      <p class="uk-margin-small-left uk-text-small uk-margin-remove-top"><span uk-icon="location"></span>${flat.address}</p>
      <hr>
    </div>
     <div class="uk-card-body uk-flex uk-padding-remove-vertical ">

          <p class="uk-margin-remove mr-2"><i class="fas fa-euro-sign mx-2"></i>
            ${flat.rent}</p>
          <p class="uk-margin-remove mr-2"><i class="fas fa-home mx-2"></i>
            ${flat.square_meter}</p>
          <p class="uk-margin-remove mr-2"><i class="fas fa-ticket-alt mx-2"></i>
            ${flat.vacant_from}</p>
          <p class= "uk-margin-remove mr-2"><i class="fas fa-door-open mx-2"></i>
            ${flat.bedroom + 1}</p>
     </div>
     <div class="uk-card-footer uk-flex uk-margin-auto">
       <a href="/flats/${flat.id}/viewings?viewing%5Blike%5D=false" data-remote="true" data-method="post" , class="uk-button uk-button-danger uk-button-large like-btn uk-border-pill uk-margin-small-right" data-flat-id="${flat.id}">
        <span uk-icon="icon: close; ratio: 8"></span>
       </a>
       <a href="/flats/${flat.id}/" data-remote="true" id="info-btn" class="uk-button uk-button-default uk-button-large like-btn uk-border-pill" data-flat-id="${flat.id}">
        <span uk-icon="icon: info; ratio: 8"></span>
       </a>
       <a href="/flats/${flat.id}/viewings?viewing%5Blike%5D=true" data-remote="true" data-method="post" id="accept-btn" class="uk-button uk-button-primary uk-button-large like-btn uk-border-pill uk-margin-small-left" data-flat-id="${flat.id}">
         <span uk-icon="icon: heart; ratio: 8"></span>
       </a>
    </div>
    <div class="uk-card-footer">
   </div>
 </div>
`
}
export default SingleFlat;

