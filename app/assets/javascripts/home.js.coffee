# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  foo = ->
    "Callback"
  $("#typed").typed
    strings: ["Build me a marketing site.", "Let's make a basic webpage.", "I want an info page.", "I want to start a blog.", "Make me a landing page.", "Design a login page.", "Try it out now!"]
    typeSpeed: 30
    backDelay: 1700
    callback: ->
      foo()

  $('#deploy').click ->
  	$('#myModal').modal()
  

  $("#save").click ->
