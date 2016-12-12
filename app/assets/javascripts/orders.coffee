ready = ->
  $('#order-items')
    .on 'cocoon:before-insert', (e, order_to_be_added)->
      e.preventDefault()
      console.log('before')
    .on 'cocoon:after-insert', (e, added_order)->
      e.preventDefault()
      order = $(added_order)[0]
      product_name_input = $(order).find('input')[0]
      console.log product_name_input
      $(product_name_input).on "input", input_change

    .on 'cocoon:before-remove', (e, order)->

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
        'data-name': p.name
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

  select_product = (e)->
    #query siblings inputs and add products to each input
    element = $(this)
    product_name = element.data('name')
    element.val(product_name)
    product_id = element.data('id')
    #find inputs' siblings
    inputs = element.parents('.row').find('input')
    $(inputs).each (index,ele)->
      switch index
        when 0 then $(ele).val(product_name)
        when 1 then $(ele).val(product_id)
      return

    $('.product-list').remove()

  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
