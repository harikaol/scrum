ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address            => 'smtp.gmail.com',
  :port               => 587,
  :domain             => 'gmailcom',
  :authentication     => 'plain',
  :user_name          => 'harika@ostryalabs.com',
  :password           => 'Harika123' 
}
