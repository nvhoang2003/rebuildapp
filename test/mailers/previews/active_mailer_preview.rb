# Preview all emails at http://localhost:3000/rails/mailers/active_mailer
class ActiveMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/active_mailer/active_signin
  def active_signin
    ActiveMailer.active_signin
  end

end
