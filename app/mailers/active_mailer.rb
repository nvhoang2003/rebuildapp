class ActiveMailer < ApplicationMailer

  def active_signin(reader)
    @reader = reader
    mail to: reader.email , subject: "Ok"
  
  end
end
