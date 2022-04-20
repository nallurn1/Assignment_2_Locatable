# frozen_string_literal: true

# Controls emails sent out from the application
# TCNJ: you likely won't need this
class ApplicationMailer < ActionMailer::Base
  default from: 'locatableapp@gmail.com'
  layout 'mailer'
end
