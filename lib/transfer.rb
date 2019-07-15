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
    if !self.sender.valid?
      
      puts "Transaction rejected. Please check your account balance."
      
    elsif @status == "pending"
    self.receiver.deposit(@amount)
    self.sender.withdraw(@amount)
    @status = "complete"
  end
end

end
