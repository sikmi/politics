class NotifyMailer::ToAdmin < NotifyMailer

  # Order インスタンスからのメール
  #Order::SendMail::ADMIN_MAILS.each do |mail_type|
  #  define_method mail_type do |order|
  #    @order = order
  #    set_resource
  #    mail(
  #      subject: I18n.t("mailers.notify_mailer.to_admin.#{mail_type}.subject") # タイトル
  #    ) do |format|
  #      format.text
  #    end

  #  end
  #end

  ## Contact インスタンスからのメール
  #Contact::SendMail::ADMIN_MAILS.each do |mail_type|
  #  define_method mail_type do |contact|
  #    @contact = contact
  #    @object = contact.object
  #    set_resource
  #    mail(
  #      subject: I18n.t("mailers.notify_mailer.to_admin.#{mail_type}.subject") # タイトル
  #    ) do |format|
  #      format.text
  #    end

  #  end
  #end

  def set_resource
    @resource = Administrator.new
  end

  

end
