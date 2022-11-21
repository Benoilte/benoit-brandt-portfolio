class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: true
  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message, validate: true
  attribute :nickname, captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "Contact Form Inquiry",
      to: "infobbr@benoitbrandt.ch",
      from: %("#{name}" <#{email}>)
    }
  end
end
