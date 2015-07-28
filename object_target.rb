require_relative 'account'

acc1 = Account.new('Kuya',1000)
acc2 = Account.new('Carlo',500)


acc1.withdraw(300)
acc1.status

acc1.transfer(500,acc2)
acc1.status
acc2.status


