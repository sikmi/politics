$ ->
  $(window).resize ->
    $(".modal-body").css("maxHeight", $(window).height()*0.8)
  $(".modal-body").css("maxHeight", $(window).height()*0.8)

  $(".modal-open").click (e)->
    e.preventDefault()
    $(".modal").addClass("is-open")

  $(".modal-close").click (e)->
    $(".modal").removeClass("is-open")
