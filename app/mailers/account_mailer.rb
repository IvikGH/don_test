class AccountMailer < ApplicationMailer
  default from: ENV['GMAIL_MAIL'],
          template_path: 'mailers/account_mailer/'
  layout 'mailer'

  def notify(message, account)
    @message = message.text
    %w(name balance currency).each do |word|
      @message = @message.sub("{{#{word}}}", account.public_send(word).to_s)
    end
    mail(to: account.email,
         subject: 'Состояние баланса')
  end
end
