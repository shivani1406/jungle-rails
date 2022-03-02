class UserMailer < ApplicationMailer

  default from: "no-reply@jungle.com"

  def confirmation_email(order)
    @order = order
    mail(to: @order.email, subject: "Order confirmation for order ##{@order.id}")
  end

end