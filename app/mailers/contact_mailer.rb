class ContactMailer < ActionMailer::Base

  default from: "Your Mailer <noreply@yourdomain.com>"
  default to: "Your Name <drnjualem@gmail.com>"

  def new_contact(contact)
    @contact = contact
    
    mail subject: "Request Form from #{contact.name}"
  end

end