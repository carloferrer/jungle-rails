class Mailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def receipt(order_id)
    @email = Order.find_by(order_id).email

    mail(to: @email, subject: '')
  end
end
