# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#pro_item').change ->
    $.ajax
      url: '/products/filter.js'
      type: 'GET'
      dataType: 'script'
      data: { pro: { item: pro_item.value }}
    return
  $('#pro_variant').change ->
    $.ajax
      url: '/products/filter.js'
      type: 'GET'
      dataType: 'script'
      data:  { pro: { variant: pro_variant.value }}
    return
  return
