class ReminderMailer < ApplicationMailer
    def new_reminder_email
        @alert = params[:alert]

        mail(to: @contact.user_email, subject: "Important Alert")
    end
end