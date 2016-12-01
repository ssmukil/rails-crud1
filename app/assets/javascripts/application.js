// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require school
//= require_tree .
// $(document).ready(function){
	
// 	// $("#text-field").change(function(){
// 	alert("hi");
// 	// })
// }


// var iChars = "!@#$%^&*()+=-_[]\\\';,./{}|\":<>?~`";
// var numbers = "0123456789";

// $(document).ready(function(){
//    var label = document.getElementsByClassName('error-first');
//    console.log(label)
//    var input = document.getElementsByClassName("school-create-validation")
//    console.log(input);

//    for(var i=0; i<input.length; i++) {
//        $(input[i]).bind("change focusout", function() {
// console.log(label[0])
//            validation($(this), $(this).next())
//        });
//    }

//    function validation(inputValue, labelValues) {
//    var input = inputValue.val().trim();
//    var labelValue = labelValues[0];
//    console.log($(inputValue).attr('id'))
//        if(input === ''){
//              $(labelValue).attr('data-error', "cannot be empty")
//              return $(inputValue).addClass("invalid").removeClass("valid");
//        }
//        if($(inputValue).attr('id') === 'pincode'){
//            if( input.length === 6){
//                return $(inputValue).addClass( "valid" ).removeClass("invalid");
//            }
//            else{
//                return $(inputValue).addClass( "invalid" ).removeClass("valid");
//            }
//        }
//       else{
//               for(var i = 0; i<input.length; i++) {
//         if(iChars.indexOf(input[i]) != -1) {
//             $(inputValue).addClass( "invalid" );
//             $(labelValue).attr('data-error', 'special character not allowed')
//          // alert("e4")
//          return ''
//         }
//         if(numbers.indexOf(input[i]) != -1) {
//             $(inputValue).addClass( "invalid" );
//             $(labelValue).attr('data-error', 'number not allowed')
//          // alert("e5")
//          return ''
//         }
//      }
//       }
//      // alert("s");
//      $(inputValue).addClass("valid").removeClass("invalid");
//    }
//    })


 $(document).ready(function(){
    $('.collapsible').collapsible();
  });


 $('.collapsible').collapsible({
      accordion: false, // A setting that changes the collapsible behavior to expandable instead of the default accordion style
      onOpen: function(el) { alert('Open'); }, // Callback for Collapsible open
      onClose: function(el) { alert('Closed'); } // Callback for Collapsible close
    }
  );