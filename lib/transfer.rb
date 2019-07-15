class Transfer
  
  attr_accessor :sender, :receiver, :amount, :transfer
  
  def inititalize(sender, receiver, amount)
    @sender=sender
    @receiver = receiver
    @amount = amount
  end
end
