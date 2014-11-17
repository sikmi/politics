class ContactMailer < ActionMailer::Base
  default from: "info@seijihashin.com"
  default bcc:  "info@sikmi.com"

  def received(contact)
    @contact = contact
    mail(to: @contact.email ,subject: "【政治発進】お問い合わせありがとうございます。")
  end

end
