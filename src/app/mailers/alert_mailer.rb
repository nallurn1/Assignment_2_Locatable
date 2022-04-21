 # Project name: Locatable
 # Description: Sending out alerts to the user's close contacts when they are in possible danger
 # Filename: alert_mailer.rb
 # Description: Email Message for alerts and where to send it to
 # Last modified on: 4/20/22

class AlertMailer < ApplicationMailer
    def new_alert_email
        @alert = params[:alert]
        @contact = Contact.last

        mail(to: @contact.contact_email, subject: "Important Alert")
    end
end