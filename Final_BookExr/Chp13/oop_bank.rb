class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
       @name = name
       @balance = balance
    end
    private
    def pin
        @pin = 1234
    end
    def pin_error
        "Access denied: incorrect PIN."
    end
    public
    def display_balance(pin_number)
        puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    def withdraw(pin_number, amount)
        if pin_number == pin 
            @balance -= amount
            puts "Withdrew #{amount}" 
        else
            puts pin_error
        end
    end
    def deposite(pin_number, amount)
         if pin_number == pin
             @balance += amount
             puts "You deposite #{amount}. Your new balance is #{@balance}"
         else
            puts pin_error
         end
    end
end
checking_account = Account.new("Tsu", 200)
checking_account.deposite(1234, 300)
checking_account.deposite(1214, 300)
checking_account.withdraw(1234, 50)
checking_account.withdraw(1224, 50)
checking_account.display_balance(1234)




