class Tenant

    def initialize(name, age, credit_score)
        @name = name
        @age = age
        @credit_score = credit_score

    end

    def name
        @name
    end

    def age
        @age
    end

    def credit_score
        @credit_score
    end

end


bryan = Tenant.new("bryan", 36, 200)
pip = Tenant.new("pip", 36, 400)
andrew = Tenant.new("andrew", 36, 790)
ian = Tenant.new("ian", 36, 790)
denis = Tenant.new("denis", 36, 500)


class Apartment

    def initialize(number, rent, square_footage, bedroomNum, bathroomNum, tenant)
        @number = number
        @rent = rent
        @square_footage = square_footage
        @bedroomNum = bedroomNum
        @bathroomNum = bathroomNum
        @tenant = tenant
    end

    def number
        @number
    end

    def rent
        @rent
    end

    def square_footage
        @square_footage
    end

    def bedroomNum
        @bedroomNum
    end

    def bathroomNum
        @bathroomNum
    end

    def tenant
        @tenant
    end

    def addTenant(newTenant)
        if(newTenant.credit_score > 560) & (@tenant.length<@bedroomNum)
        @tenant.push(newTenant)
        else
        puts "error - low score or no bedroom"
        end
    end

    def removeTenant(tenant)
        @tenant.delete(tenant)
    end

    def removeAllTenant
        @tenant = []
    end


    def averageCreditScore
        total_score = 0
        # @tenant => [MC01, MC02]
        @tenant.each do |elem|
          total_score += elem.credit_score
        end

        average_score = total_score/tenant.length

        return average_score
    end

end

MC01 = Apartment.new(123,5000, 500, 2, 1, [bryan])
MC02 = Apartment.new(123,5000, 800, 3, 2, [pip, bryan])

# class Building
#     @@address = "Central, HK"
#     @@appartments = ["1A", "1B", "1C", "1D", "2A", "2B", "2C"]

#     #to read
#     def address
#         @@address
#     end

#     #to read
#     def appartment
#         @@appartments
#     end


# end


# MetroCity = Building.new

