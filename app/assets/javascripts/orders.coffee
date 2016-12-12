ready = ->
  #observing input change
  input_change = (e, input)->
    $('.product-list').remove()
    if($(this).val().length > 3)
      find_product($(this).val(), $(this))



  $('#order-items')
    .on 'cocoon:before-insert', (e, order_to_be_added)->
      console.log('before')
    .on 'cocoon:after-insert', (e, added_order)->
      order = $(added_order)[0]
      product_name_input = $(order).find('input')[0]
      $(product_name_input).on "input", input_change

    .on 'cocoon:before-remove', (e, order)->
      $(order[0]).off 'input'

  products = ['test', 'test2', 'test3']
  add_autocomplete_box = (products, input)->
    list = $('<ul></ul>')
    list.addClass('product-list')
    list.width(input[0].offsetWidth)
    for p in products
      li = $('<li></li>', {
        text: p.name
      })
      list.append(li)
    $(input).after(list)

  find_product = (name, input) ->
    $.getJSON('/products', {q: name})
      .done (data)->
        console.log data
        if(data.length == 0)
          return
        list = add_autocomplete_box(data, input)

$(document).ready ready
$(document).on 'turbolinks:load', ready
