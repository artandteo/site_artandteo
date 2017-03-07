
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

// ----------- Google Analytics ----------------

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-71035758-1', 'auto');
  ga('send', 'pageview');

});
