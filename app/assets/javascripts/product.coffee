# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#item').change ->
    $.ajax
      url: '/products/filter'
      type: 'GET'
      dataType: 'script'
      data: item: item.value
    return
  $('#variant').change ->
    $.ajax
      url: '/products/filter'
      type: 'GET'
      dataType: 'script'
      data: variant: variant.value
    return
  return
