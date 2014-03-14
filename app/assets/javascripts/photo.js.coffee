$(document).ready ->
  $(".fancybox").attr("rel", "gallery").fancybox
    helpers:
      title:
        type: "outside"
      overlay:
        css:
          'background' : 'rgba(58, 42, 45, 0.95)'

    beforeLoad: ->
      @title = $(@element).attr("caption")
