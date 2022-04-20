class AlertMailer < ApplicationMailer
    def new_alert_email
        @contact = params[:contact]

        mail(to: @contact.contact_email, subject: "ImportantAlert")
    end
end