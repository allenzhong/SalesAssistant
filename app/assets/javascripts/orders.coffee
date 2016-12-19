ready = ->

  #observing input change
  input_change = (e, input)->
    e.preventDefault()
    $('.product-list').remove()
    if($(this).val().length > 3)
      find_product($(this).val(), $(this))

  add_autocomplete_box = (products, input)->
    list = $('<ul></ul>')
    list.addClass('product-list')
    list.width(input[0].offsetWidth)
    for p in products
      li = $('<li></li>', {
        text: p.name,
        'data-id': p.id,
        'data-name': p.name,
        'data-unit-price':p.price
      })
      $(li).on('click', select_product)
      list.append(li)
    $(input).after(list)

  find_product = (name, input) ->
    $.getJSON('/products', {q: name})
      .done (data)->
        if(data.length == 0)
          return
        list = add_autocomplete_box(data, input)
    return

  change_quantity = (e)->
    quantity = parseInt($(this).val())
    inputs = $(this).parents('.row').find('input')
    unit_price_input = inputs[3]
    subtotal_input = inputs[4]
    if(quantity > 0)
      subtotal = quantity * parseFloat($(unit_price_input).val())
      $(subtotal_input).val(subtotal)
    else
      $(subtotal_input).val('')
    return

  select_product = (e)->
    #query siblings inputs and add products to each input
    element = $(this)
    product_name = element.data('name')
    element.val(product_name)
    product_id = element.data('id')
    unit_price = element.data('unit-price')
    #find inputs' siblings
    inputs = element.parents('.row').find('input')
    $(inputs).each (index,ele)->
      switch index
        when 0 then $(ele).val(product_name)
        when 1 then $(ele).val(product_id)
        when 2 then $(ele).on('keyup',change_quantity)
        when 3 then $(ele).val(unit_price)
      return

    $('.product-list').remove()
    return

  query_recipient = (e)->
    console.log(e)
    return

  $('#order_recipient_name').on 'change', (e)->
    console.log(e)
    return

  $('#order-items')
    .on 'cocoon:before-insert', (e, order_to_be_added)->
      console.log('before')
    .on 'cocoon:after-insert', (e, added_order)->
      order = $(added_order)[0]
      product_name_input = $(order).find('input')[0]
      console.log product_name_input
      $(product_name_input).on "input", input_change

    .on 'cocoon:before-remove', (e, order)->

  return

$(document).on 'turbolinks:load', ready
