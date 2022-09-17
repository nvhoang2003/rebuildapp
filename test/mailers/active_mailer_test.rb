require "test_helper"

class ActiveMailerTest < ActionMailer::TestCase
  test "active_signin" do
    mail = ActiveMailer.active_signin
    assert_equal "Active signin", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
