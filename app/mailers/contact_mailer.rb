class ContactMailer < ActionMailer::Base
  default from: ''

  def send_mail

    mail to: '', subject: 'Contact from Living Bull'
  end
end
