$ ->
  $(".modal-open").click (e)->
    e.preventDefault()
    $(".modal").addClass("is-open")

  $(".modal-close").click (e)->
    $(".modal").removeClass("is-open")
