const SingleFlat = (flat, index) => {
return  `
<div class="uk-card uk-card-default uk-width-1-2@m uk-box-shadow-small flat-box  ${index == 0 ? 'active' : '' }">
    <div class="uk-card-media-top uk-border-rounded">
      <img data-src="https://images.unsplash.com/photo-1470619681920-17fd5fd2f094?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" width="400" height="500" alt="" class="uk-border-rounded" uk-img >
    </div>
    <div>
      <h4 class="uk-margin-small-left uk-card-title uk-margin-top uk-margin-remove-bottom">${flat.title}</h4>
      <p class="uk-margin-small-left uk-text-small uk-margin-remove-top"><span uk-icon="location"></span>${flat.address}</p>
         <a href="/flats/${flat.id}" class="uk-margin-small-left">
           <span uk-icon="more"></span> More Information
         </a>
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
     <div class="uk-card-footer uk-flex uk-flex-center">
       <a href="/flats/${flat.id}/viewings?viewing%5Blike%5D=false" data-remote="true" data-method="post" id="sweet-alert-demo", class="uk-button uk-button-danger uk-button-large like-btn" data-flat-id="${flat.id}">
        <span uk-icon="close"></span>
       </a>
       <a href="/flats/${flat.id}/viewings?viewing%5Blike%5D=true" data-remote="true" data-method="post" id="sweet-alert-demo", class="uk-button uk-button-primary uk-button-large like-btn" data-flat-id="${flat.id}">
         <span uk-icon="check"></span>
       </a>
    </div>
    <div class="uk-card-footer">
   </div>
 </div>
`
}
export default SingleFlat;
