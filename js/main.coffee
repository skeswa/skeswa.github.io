---
---

$(document).ready ->
  $(".nav ul li a").click ->
    $('html, body').animate({
        scrollTop: $("##{$(this).attr('class')}").offset().top,
    }, 1000, 'easeInOutExpo');

  $(".chevron .down").click ->
     $('html, body').animate({
         scrollTop: $("#about").offset().top
     }, 750, 'easeInOutExpo');

  mobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)

  if $("html").hasClass("cssanimations") and not mobile
    #'#about p', 'fadeInUp', '.column', 'fadeInUp',
    #'.item', 'fadeInDown', '.bar', 'fadeInRight',
    #'.paperplane', 'bounceInDown', '#quote .content', 'fadeIn',
    #'#quote .icon', 'fadeInDown'

    animate = (animation) ->
      $(animation[0]).addClass("concealed").viewportChecker({
        classToAdd: "visible animated #{animation[1].trim()}",
        offset: 200
      })

    items = [
        ['#about p', 'fadeInUp'],
        ['.column', 'fadeInUp'],
        ['.item', 'fadeInDown'],
        ['.bar', 'fadeInRight'],
        ['.paperplane', 'bounceInDown']
      ]

    for item in items
      animate item

  $("#footer ul li").hover ->
    $(this).find('p').stop(true, true).fadeIn(800)
  , ->
    $(this).find('p').stop(true, true).fadeOut(800)
