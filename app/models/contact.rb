class Contact < ActiveRecord::Base
  validates_presence_of :email, :comment, :first_name, :last_name

  after_create :send_receive_mail

  def send_receive_mail
    ContactMailer.received(self).deliver
  end
end
