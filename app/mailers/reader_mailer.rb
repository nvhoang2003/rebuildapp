class ReaderMailer < ApplicationMailer
  default from: 'hoangxz2k3@gmail.com'

  def welcome_reader
    @reader = reader
    mail(
      to: @reader.email,
      subject: 'dmm'
    )    
  end
end
