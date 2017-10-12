class Mailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def receipt(order)
    @email = order.email
    @order = order

    mail(to: @email, subject: "Order \##{order.id} from The Jungle")
  end
end
