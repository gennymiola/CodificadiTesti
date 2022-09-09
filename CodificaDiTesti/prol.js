$(document).ready(function () {
    click1 = 0;
    click2 = 0;
    click3 = 0;
    click4 = 0;
    click5 = 0;
    click6 = 0;
    click7 = 0;
    click8 = 0;
    click9 = 0;
    click10 = 0;
    click11 = 0;
    click12 = 0;
    click13 = 0;
    click14 = 0;
    var fronte12 = document.getElementById('fronte12');
    var retro12 = document.getElementById('retro12');
    var pulsante1 = document.getElementById ('retro_pag12');
    var fronte13 = document.getElementById('fronte13');
    var retro13 = document.getElementById('retro13');
    var pulsante2 = document.getElementById ('retro_pag13');
    var glotton = document.getElementById('div_glott');
    glotton.style.display='none';
    var pulsante3 = document.getElementById ('glotto');
    var placement = document.getElementById('div_place');
    placement.style.display='none';
    var pulsante4 = document.getElementById ('pl');
    var persone = document.getElementById('div_person');
    persone.style.display='none';
    var pulsante5 = document.getElementById ('pr');
    var keywords = document.getElementById('div_keywords');
    keywords.style.display='none';
    var pulsante6 = document.getElementById ('termini');

    function cambiacolore(click, classe, colore) {
      if (click % 2 == 1) {
        for (i = 0; i <= classe.length; i++) {
          classe[i].style.background = colore;
        }
      }
      if (click % 2 == 0) {
        for (i = 0; i <= classe.length; i++) {
          classe[i].style.background = "none";
        }
      }
    }
    pulsante1.addEventListener('click', function(){
        click7 += 1;
        if (click7 % 2 == 1) {
        fronte12.style.display='none';
        retro12.style.display='inline-block';
        }
        if (click7 % 2 == 0) {
            fronte12.style.display='inline-block';
            retro12.style.display='none';
        }

    });
    pulsante2.addEventListener('click', function(){
        click8 += 1;
        if (click8 % 2 == 1) {
        fronte13.style.display='none';
        retro13.style.display='inline-block';
        }
        if (click8 % 2 == 0) {
            fronte13.style.display='inline-block';
            retro13.style.display='none';
        }

    });

    pulsante3.addEventListener('click', function(){
      click10 += 1;
      if (click10 % 2 == 1) {
      glotton.style.display='inline-block';
      }
      if (click10 % 2 == 0) {
        glotton.style.display='none';
      }

  });

  pulsante4.addEventListener('click', function(){
    click11 += 1;
    if (click11 % 2 == 1) {
      placement.style.display='inline-block';
    }
    if (click11 % 2 == 0) {
      placement.style.display='none';
    }

});

pulsante5.addEventListener('click', function(){
  click12 += 1;
  if (click12 % 2 == 1) {
    persone.style.display='inline-block';
  }
  if (click12 % 2 == 0) {
    persone.style.display='none';
  }

});

pulsante6.addEventListener('click', function(){
  click13 += 1;
  if (click13 % 2 == 1) {
    keywords.style.display='inline-block';
  }
  if (click13 % 2 == 0) {
    keywords.style.display='none';
  }

});


    $("#terminologia").on("click", function () {
        click1 += 1;
        terminologia = $("term");
       
        cambiacolore(click1, terminologia, "yellow");
       
      });

      
    $(".expan").hide();
    $("#abbreviazioni").on("click", function () {
        click2 += 1;
        if (click2 % 2 == 1) {
        $(".expan").fadeIn();
    
        cambiacolore(click2, $("abbr"), "#54aedb");
        }
        if (click2 % 2 == 0) {
            $(".expan").fadeOut();
            cambiacolore(click2, $("abbr"), "white");
        }

      });

  
    $("#sostituzioni").on("click", function () {
        click14 += 1;
        if (click14 % 2 == 1) {
        $("subst").css('background', '#92e9d1');
        $("mod").css('background', '#92e9d1');
    
        }
        if (click14 % 2 == 0) {
          $("subst").css('background', 'white');
          $("mod").css('background', 'white');
        }

      });


      $("reg").hide();
      $("#regolarizzazioni").on("click", function () {
          click9 += 1;
          if (click9 % 2 == 1) {
          $("reg").fadeIn().css('background', '#f1c487');
          $("orig").fadeIn().css('background', '#ea9c33');
          }
          if (click9 % 2 == 0) {
              $("reg").fadeOut();
              cambiacolore(click9, $("orig"), "white");
          }
  
        });

       $("corr").hide();
        $("sic").mouseover(function () {
        $("sic").hide();
        $("corr").fadeIn();

      });
      $("corr").mouseleave(function () {
        $("corr").hide();
        $("sic").fadeIn();

      });

      



  $("#cancellazioni").on("click", () => {
    click3 += 1;

    if (click3 % 2 == 1) {
      $("del").fadeIn();
      cambiacolore(click3, $("del"), "red");


 }
    if (click3 % 2 == 0){
        cambiacolore(click3, $("del"), "white");
    }

  }); 

  $("#aggiunte").on("click", () => {
    click4 += 1;

    if (click4 % 2 == 1) {
      $("add").fadeIn();
      cambiacolore(click4, $("add"), "pink");


 }
    if (click4 % 2 == 0){
        cambiacolore(click4, $("add"), "white");
    }

  }); 


});

    