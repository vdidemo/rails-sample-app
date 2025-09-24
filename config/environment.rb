# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SendgridRailsSampleApp::Application.initialize!

# overwrite ActionMailer settings to send through SendGrid servers
ActionMailer::Base.smtp_settings = {
  :address        => 'zsmtp.eranyacloud.com',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'sampleuser@existing.com',
  :password       => 'existingpassword',
  :domain         => 'existing.com',
  :enable_starttls_auto => true
}
