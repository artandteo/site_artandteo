
document.addEventListener("turbolinks:load", function() {
// --------- li de menu selectionné en cours ----------
  $('a[href="' + this.location.pathname + '"]').parents('li').addClass('active');

// --------- retour d'une NavBar après scroll de 100px --------
  $(window).scroll(function() {
    var height = $(window).scrollTop();

    if(height  > 100) {
      $('.navbar_fixed').css('display','block');
    }
    else {
      $('.navbar_fixed').css('display','none');
    }
  });

// -------- Bascule des drapeaux de langues ----------

  $( ".languages a").hover(function() {
    $(this).css( "opacity", "0.5" );
    }, function(){
    $(this).css( "opacity", "1" );
  });

  if (locale === 'fr') {
    $( '.lg-sel' ).css('opacity','1');
    $( '.lg-unsel' ).css('opacity','0.25');
  }
  else {
    $( '.lg-unsel' ).css('opacity','1');
    $( '.lg-sel' ).css('opacity','0.25');
  }
  });
