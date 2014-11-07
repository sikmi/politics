module ApplicationHelper::Link

  # = link_i18n
  #
  # 例)
  #   link_i18n :root
  #
  # link_to t("routes.root"), root_path
  #
  # のシンタックスシュガー
  #
  def link_i18n *args
    key = args.shift
    # URL
    args.unshift send("#{key}_path")
    # 名前
    args.unshift I18n.t("routes.#{key}")
    link_to *args
  end

end
