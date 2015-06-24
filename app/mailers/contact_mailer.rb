class ContactMailer < ActionMailer::Base
  default from: "lauren.invox@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.email_contact.subject
  #
  def email_contact(params)
    @first_name = params['first_name']
    @last_name = params['last_name']
    @email = params['email']
    @message = params['msg']
    mail to: 'lauren.invox@gmail.com'
  end
end
