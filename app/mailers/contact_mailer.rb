class ContactMailer < ActionMailer::Base
 default to: "ramisn3@gmail.com"

 def contact_email(name, email, message)
 @name = name
 @email = email
 @message = message

 mail(from: email, subject: 'mywebsite Contact Form Message')
 end
end
