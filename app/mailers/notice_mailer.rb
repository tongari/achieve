class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  domain = 'tongari-as.com'
  @@mailPath = "info@#{domain}"

  def sendmail_blog(blog)
    @blog = blog

    mail to: @@mailPath,
    subject: '【Achieve】ブログが投稿されました'
  end

  def sendmail_contact(contact)
    @contact = contact

    mail to: @@mailPath,
    subject: '【Achieve】お問い合わせありがとうございます'
  end
end
