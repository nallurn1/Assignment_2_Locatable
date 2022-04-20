class ReminderMailer < ApplicationMailer
    def new_reminder_email
        @contant = params[:contact]

        mail(to: @contact.user_email, subject: "ImportantAlert")
    end
end