#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require_tree .
#= admin/require jquery.datetimepicker
#= require wizcms_article/application


$(document).ready ->
  $('.datepicker').datetimepicker({lang:'ch'});
