window.AwesomeShareButtons =
  openUrl : (url) ->
    window.open(url)
    false

  share : (el) ->
    site = $(el).data('site')
    title = encodeURIComponent($(el).parent().data('title') || '')
    img = encodeURIComponent($(el).parent().data("img") || '')
    url = encodeURIComponent($(el).parent().data("url") || '')
    if url.length == 0
      url = encodeURIComponent(location.href)
    switch site
      when "email"
        location.href = "mailto:?to=&subject=#{title}&body=#{url}"
      when "twitter"
        AwesomeShareButtons.openUrl("https://twitter.com/home?status=#{title}: #{url}")
      when "facebook"
        AwesomeShareButtons.openUrl("http://www.facebook.com/sharer.php?u=#{url}")
      when "google_plus"
        AwesomeShareButtons.openUrl("https://plus.google.com/share?url=#{url}")
      when "delicious"
        AwesomeShareButtons.openUrl("http://www.delicious.com/save?url=#{url}&title=#{title}&jump=yes&pic=#{img}")
      when "pinterest"
        AwesomeShareButtons.openUrl("http://www.pinterest.com/pin/create/button/?url=#{url}&media=#{img}&description=#{title}")
      when "tumblr"
        get_tumblr_extra = (param) ->
          cutom_data = $(el).attr("data-#{param}")
          encodeURIComponent(cutom_data) if cutom_data

        tumblr_params = ->
          path = get_tumblr_extra('type') || 'link'

          params = switch path
            when 'text'
              title = get_tumblr_extra('title') || title
              "title=#{title}"
            when 'photo'
              title = get_tumblr_extra('caption') || title
              source = get_tumblr_extra('source') || img
              "caption=#{title}&source=#{source}"
            when 'quote'
              quote = get_tumblr_extra('quote') || title
              source = get_tumblr_extra('source') || ''
              "quote=#{quote}&source=#{source}"
            else # actually, it's a link clause
              title = get_tumblr_extra('title') || title
              url = get_tumblr_extra('url') || url
              "name=#{title}&url=#{url}"


          "/#{path}?#{params}"

        AwesomeShareButtons.openUrl("http://www.tumblr.com/share#{tumblr_params()}")
    false
