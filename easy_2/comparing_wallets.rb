# comparing_wallets.rb
# Consider the given code. Modify the code so that it works.
# Do not allow the amount in the wallet accessible to any method that isn't part
# of the Wallet class.
# Solution: Add the getter method `amount` as a protected method.

class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end

  protected

  attr_reader :amount
end

class Hacker
  def self.check_amt(some_wallet)
    some_wallet.amount
  end

  def check_amt(some_wallet)
    some_wallet.amount
  end
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end

p Hacker.check_amt(pennys_wallet) # will throw an error
hacker = Hacker.new
p hacker.check_amt(bills_wallet)  # will throw an error
