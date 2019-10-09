
$(document).ready(function(){

 window.addEventListener( 'message', function( event ) {
        var item = event.data;
        if ( item.showPlayerMenu == true ) {
            $('body').css('background-color','transparent');
            $("body").css("background-image",'url("img.png")');
            $('#nome').text(item.nomeh);
            $('#unome').text(item.unomeh);
            $('#datanasc').text(item.datadh);
            $('#divp').css('display','block');
        } else if ( item.showPlayerMenu == false ) { // Hide the menu

            $('#divp').css('display','none');
            $('body').css('background-color','transparent important!');
            $("body").css("background-image","none");

        }
 } );
        
	
        $(document).keyup(function(e) {
            if ( e.keyCode == 27 ) {
             $.post('http://cchtml/closeButton', JSON.stringify({}));2
           }
        });

})
