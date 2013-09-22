# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  
  $('#intent').submit (event) ->
      formId = this.id
      form = this
      mySpecialFunction(formId)

      event.preventDefault()

      setTimeout (->
        form.submit()
      ), 100000 


  foo = ->
    "Callback"
  $("#typed").typed
    strings: ["Build me a marketing site.", "I want to start a blog.", "Make me a landing page.", "I need a contact page", "I need a page for customer discovery", "Design a login page.", "I want to start an ecommerce website", "Try it out now!"]
    typeSpeed: 30
    backDelay: 1700
    callback: ->
      foo()

  $('.deletable').hover (e)->
    delete_button = '<a href="#" style="height: 5px; width: 5px; border-radius:10px; background: #FF0000; color: #000000;" class="delete">x</a>'

  $('#deploy').click ->
  	$('#myModal').modal()
  

  $("#save").click ->
    url = $('#url').val()
    $('.delete').each (_, elem)->
      $(elem).remove()
    $('*').attr('contenteditable', 'false')
    $('.modal-backdrop').each (_, elem)->
      $(elem).remove()
    $('body').css('background-image', "none")
    $('.editable').each (_, elem)->
      $(elem).removeClass('editable')

    $('.aloha-editable').each (_, elem)->
      $(elem).mahalo()
      $(elem).removeClass('aloha-editable')

    $('.aloha-editable-highlight').each (_, elem)->
      $(elem).removeClass('aloha-editable-highlight')
    
    content = document.documentElement.outerHTML
    console.log(url)

    $.ajax
        url: '/static'
        type: "POST"
        data: {url: url, content: content}
        success: (response) ->
          content = response.content
          if content != null
            window.location = response.url


