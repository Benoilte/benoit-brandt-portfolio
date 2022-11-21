ActionMailer::Base.smtp_settings = {
  port: ENV.fetch('MAILGUN_SMTP_PORT'),
  address: ENV.fetch('MAILGUN_SMTP_SERVER'),
  user_name: ENV.fetch('MAILGUN_SMTP_LOGIN'),
  password: ENV.fetch('MAILGUN_SMTP_PASSWORD'),
  domain: 'benoitbrandt.ch/', # UPDATE THIS VALUE WITH YOUR OWN APP
  authentication: :plain
}
