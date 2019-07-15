require "pry"
class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender=sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end
  
  def execute_transaction
    if self.status = "complete"
  end
else
    self.receiver.deposit(self.amount)
    self.sender.withdraw(self.amount)
    self.status = "complete"
  end
end

end
