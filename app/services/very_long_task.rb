class VeryLongTask
  def send_order_mail email, order
    OrderMailer.order(email, order).deliver_now
  end
end
