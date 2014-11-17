require 'kconv'
class NotifyMailer < ActionMailer::Base
  layout '/notify_mailer/layouts/application'
  add_template_helper(ApplicationHelper)

  default from: $NOTIFY_FROM
  default to: $NOTIFY_TO
  #default bcc: $NOTIFY_BCC

  # ## student
  def student_regist_mail(student)
    @to = student
    Rails.logger.debug "####################"
    Rails.logger.debug student
    Rails.logger.debug @student
    puts student
    puts @to
    mail(to: @to.email ,subject: "Baboo Registration") do |format|
      format.text
    end
  end

end
