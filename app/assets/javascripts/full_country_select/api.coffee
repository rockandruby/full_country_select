$(document).on 'turbolinks:load ready', ->

  build_select = (resource, data) ->
    resource.empty()
    resource.append('<option></option')
    $.each data, (i, item) ->
      resource.append $('<option>',
        value: i
        text: item)
      return

  get_states = (state, obj) ->
    $.post '/full_country_select/get_states/' + obj.val(), (data) ->
      build_select(state, data)

  get_cities = (country, city, obj) ->
    $.post '/full_country_select/get_cities/' + country + '/' + obj.val(), (data) ->
      build_select(city, data)

  $('#country').on "change", ->
    $('#city').empty()
    get_states($('#state'), $(this))

  $('#state').on 'change', ->
    country = $('#country').val()
    get_cities(country, $('#city'), $(this))
