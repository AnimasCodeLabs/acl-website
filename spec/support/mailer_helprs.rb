module MailerHelpers
  def last_email
    ActionMailer::Base.deliveries.last
  end

  def reset_email
    ActionMailer::Base.deliveries = []
  end

end

RSpec.configure do |config|
  config.include EmailSpec::Helpers, type: :feature
  config.include EmailSpec::Helpers, type: :mailer
  config.include EmailSpec::Matchers, type: :feature
  config.include EmailSpec::Matchers, type: :mailer
  config.include MailerHelpers, type: :feature
  config.include MailerHelpers, type: :mailer
  config.before(:each, type: :feature) {reset_email}
end
