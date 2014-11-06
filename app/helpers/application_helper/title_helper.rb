module ApplicationHelper::TitleHelper

  # titleのgetter
  # 
  # 基本:
  #   sub_title | main_title
  #
  # イレギュラー:
  #
  #   full_title
  #
  def title
    path = "views.#{controller_path.gsub("/",".")}.#{action_name}"
    if I18n.exists?("#{path}.full_title")
      t("#{path}.full_title")
    else
      "#{t("#{path}.title")} | #{t("application.title")} "
    end
  end


end
