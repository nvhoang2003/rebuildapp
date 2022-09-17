class ActiveMailer < ApplicationMailer

  def active_signin
    @reader = reader
    mail to: reader.email , subject: "Ok"
    reader.activation_token = Reader.new_token
  end
end
