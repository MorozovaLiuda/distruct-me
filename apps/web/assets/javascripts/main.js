$(document).ready(function() {
function check_if_integer(value){
  if ($.isNumeric(value) && Math.floor(value) == value && value < 1000){
    return true
  } else if ($('#total-amount').val() == '' || $('#total-amount').is(':hidden')) {
    return true
  } else if ($.isNumeric(value) && Math.floor(value) == value  && value > 1000){
    $('.validation-error-amount').html('Provided value is too big!').css({color: 'red'}).show();
  } else{
    $('.validation-error-amount').html('Please, enter a number!').css({color: 'red'}).show();
  }
}

  $('#create-message').click(function(e){
    e.preventDefault
    value = $('#total-amount').val();
    text = $('textarea#text').val()
    client_password = $('#client_password').val()
    if (text == ''){
      $('.validation-error-text').html('Message can not be blank!').css({color: 'red'}).show();
      return false;
    }
    if (check_if_integer(value) && text != ''){
      $('.validation-error-text').hide();
      if ($('#client_password').val() == ''){
        $('#client_password').prop( "disabled", true );
      }
      else {
        $('textarea#text').val(CryptoJS.AES.encrypt(text, client_password).toString())
      }
      $('#create-form').submit();
    }
  });

  $(document).on('click', '#more-options', function(){
    $('.more-options').show();
    $('#more-options').attr('id', 'hide-more-options').html('Hide options')
    return false;
  });

  $(document).on('click', '#hide-more-options', function(){
    $('.more-options').hide();
    $('#hide-more-options').attr('id', 'more-options').html('More options');
    return false;
  })
});
