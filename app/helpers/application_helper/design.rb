module ApplicationHelper::Design

  def artwork title,&block
    [
      "<div class='artwork'>".html_safe,
      "<h3>#{title}</h3>".html_safe,
      "<pre>".html_safe,
      "#{capture(&block)}",
      "</pre>".html_safe,
      "<div class='preview'>#{capture(&block)}</div>".html_safe,
      "</div>".html_safe
    ].xss_aware_join

  end

end
