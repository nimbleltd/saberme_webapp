class Customer < User
    has_many :videos

    def customer?
        true
    end
end