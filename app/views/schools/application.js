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