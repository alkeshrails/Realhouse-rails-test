class OrderMailer < ApplicationMailer

  def order email, order_data
    @order = order_data
    mail(to: email, subject: "You got a new order!")
  end
end
