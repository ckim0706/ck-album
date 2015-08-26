class ContactMailer < ActionMailer::Base
  default from: "do-not-reply@example.com"

  def contact_email(contact)
    @contact = contact
    mail(to: ENV['gmail_username'], from: @contact.email, :subject => "Website Contact")
  end
end
