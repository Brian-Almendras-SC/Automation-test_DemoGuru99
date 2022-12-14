class RegisterTravel
    include Complements
    def name
        return @name
    end
    def lastName
        return @lastName
    end
    def setAnotherDir()
        visit('http://demo.guru99.com/test/newtours/')
    end
    def password
        return @password
    end
    
    def findTable(table)
        @data = table.rows_hash
        @data.each_pair do |key, value|
        case key
            when "First Name:"
                fill_in 'firstName', :with => value
                @name = value
            when "Last Name:"
                fill_in 'lastName', :with => value
                @lastName = value
            when "Phone:"
                fill_in 'phone', :with => value
            when "Email:"
                fill_in 'userName', :with => value
            when "Address:"
                fill_in 'address1', :with => value
            when "City:"
                fill_in 'city', :with => value
            when "State/Province:"
                fill_in 'state', :with => value
            when "Postal Code:"
                fill_in 'postalCode', :with => value
            when "Country:"
                select(value, :from => 'country')
            when "User Name:"
                fill_in 'email', :with => value
                @userName = value
            when "Password:"
                fill_in 'password', :with => value
            when "Confirm Password:"
                fill_in 'confirmPassword', :with => value
                @password = value
            end
        end

    end

    def confirmationLogin(page)
        @greeting = "Dear"+" "+ @name.to_s+" "+ @lastName.to_s
        (page).has_content?(@greeting)
    end

    def clickInRegisterButton
        @xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[17]/td/input'
        find(:xpath, @xpath_base).click
    end

    def checkCorrectUserName (userName,page)
        puts userName
        @labelText= "Note: Your user name is "+userName+"."
        puts @labelText
        page.has_content?(@labelText)
        @userNameLabel1 = find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
        @userNameLabel2 = find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
        if (@userNameLabel1 == @userNameLabel2) & (@labelText == @userNameLabel1) & (@labelText == @userNameLabel2)
          puts "Validation for user name: Passed"    
        else
          raise "Validation for user name: Failed"    
          puts "Expected: "+@labelText.to_s
          puts "Actual:"+@userNameLabel1.to_s
        end
        #only for test
        puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
        puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
        
    end
end