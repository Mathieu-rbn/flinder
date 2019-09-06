const SingleFlat = (flat, index) => {
return  `
<div class="uk-card uk-card-default uk-width-1-2@m uk-box-shadow-small flat-box  ${index == 0 ? 'active' : '' }">
    <div class="uk-card-media-top uk-border-rounded">

    <img data-src="${flat.photo}" width="400" style="height: 350px; object-fit: contain;" alt="${flat.title}" class="uk-border-rounded" uk-img >
    </div>

    <div>
      <h4 class="uk-margin-small-left uk-card-title uk-margin-top uk-margin-remove-bottom uk-text-bold">${flat.title}</h4>
      <p class="uk-margin-small-left uk-text-small uk-margin-remove-top"><span uk-icon="location"></span>${flat.address}</p>
      <hr>
    </div>
     <div class="uk-card-body uk-flex uk-padding-remove-top justify-content-center align">

          <p class="uk-margin-remove lead mr-2"><i class="fas fa-euro-sign  fa-lg mx-2"></i>
            ${flat.rent}</p>
          <p class="uk-margin-remove lead mr-2"><i class="fas fa-home fa-lg  mx-2"></i>
            ${flat.square_meter + " sm"}</p>
          <p class= "uk-margin-remove lead mr-2"><i class="fas fa-bed fa-lg  mx-2"></i>

            ${flat.bedroom + 1}</p>
     </div>
     <div class="uk-card-footer uk-padding-remove-horizontal">
      <div class ="uk-container uk-flex uk-flex-center">
       <a href="/flats/${flat.id}/viewings?viewing%5Blike%5D=false" id="reject-btn" data-remote="true" data-method="post"  class="uk-button uk-button-danger uk-button-large like-btn uk-border-pill" data-flat-id="${flat.id}">
        <span uk-icon="icon: close; ratio: 2"></span>
       </a>
       <a href="/flats/${flat.id}" id="info-btn" class="uk-button uk-button-default uk-button-large like-btn uk-border-pill" data-flat-id="${flat.id}">
        <span uk-icon="icon: info; ratio: 2"></span>
       </a>
       <a href="/flats/${flat.id}/viewings?viewing%5Blike%5D=true" data-remote="true" data-method="post" id="accept-btn" class="uk-button uk-button-danger uk-button-large like-btn uk-border-pill" data-flat-id="${flat.id}">
         <span uk-icon="icon: heart; ratio: 2"></span>
       </a>
       </div>
    </div>
    <div class="uk-card-footer">
   </div>
 </div>
`
}
export default SingleFlat;

