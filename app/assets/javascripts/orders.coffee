ready = ->

  $('#order-items')
    .on 'cocoon:before-insert', (e, order_to_be_added)->
      console.log('before')
    .on 'cocoon:after-insert', (e, added_order)->
      order = $(added_order)[0]
      product_name_input = $(order).find('input')[0]
      $(product_name_input).on "input", (e)->
        console.log($(this).val())

    .on 'cocoon:before-remove', (e, order)->
      console.log('remove')

$(document).ready ready
$(document).on 'turbolinks:load', -> ready
