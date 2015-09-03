$(document).ready(function() {

  // if (window.width < 768) {
   
    $("a.fancybox")
      .attr('rel', 'gallery')
      .fancybox({
        openEffect  : 'elastic',
        closeEffect : 'elastic',
        nextEffect  : 'elastic',
        prevEffect  : 'elastic',
        margin      : 50,
        helpers : {
          title : { type : 'inside' }
        }, // helpers
        beforeShow : function() {
          this.title = (this.index + 1) + ' / ' + this.group.length + '<br>' + (this.title ? '' + this.title + '' : '');
          // this.title = "( " + (this.index + 1) + ' / ' + this.group.length + " )" + '<center>' + (this.title ? '' + this.title + '' : '') + '</center>';
        } // beforeShow
    }); //fancybox
  // } // if
}); //ready

// $(document).ready(function(){
//    $('.picture img').on('click',function(e){
//     e.preventDefault();
//       var src = $(this).attr('src');
//       var img = '<img src="' + src + '" class="img-responsive"/>';
//       $('#myModal').modal();
//       $('#myModal').on('shown.bs.modal', function(){
//           $('#myModal .modal-body').html(img);
//       });
//       $('#myModal').on('hidden.bs.modal', function(){
//           $('#myModal .modal-body').html('');
//       });
//    });
// })

