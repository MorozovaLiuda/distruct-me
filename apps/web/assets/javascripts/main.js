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
    if ($('textarea#text').val() == ''){
      $('.validation-error-text').html('Message can not be blank!').css({color: 'red'}).show();
      return false;
    }
    if (check_if_integer(value) && $('textarea#text').val != ''){
      $('.validation-error-text').hide();
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

