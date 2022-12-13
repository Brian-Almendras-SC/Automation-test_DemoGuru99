require 'capybara/rspec'
class RegisterGuru99
    include Complements
    require 'capybara/rspec'
    @DIRDNS='http://demo.guru99.com/'
    def initialize
        Capybara.app_host =@DIRDNS
    end
    
    def fillinEmail(text)
        fill_in('emailid', :with => text)
    end

    def setAnotherDir()
        visit 'http://demo.guru99.com/' 

    end

    def verificyInToThePage()
        @loginMessage = 'Access details to demo site'
        @res=find(:xpath, '/html/body/table/tbody/tr[1]/td/h2', :text => @loginMessage)
        #puts @res.native.text
        return @res.has_text?('Access details to demo site.',exact: true)
    end

    def findTable(table)
        @data = table.rows_hash
        @counter = 4

        @path = find(:xpath, '/html/body/table')
        @xpath_base_name = './tbody/tr[%i]/td[1]'
        @xpath_base_name1 = './tbody/tr[%i]/td[2]'
        @data.each_pair do |key, value|
            (@path.find(:xpath, @xpath_base_name % [@counter])).has_content?(key)
            #expect(@path.find(:xpath, @xpath_base_name % [@counter])).to have_content(key)
            @counter += 1 
        end
    end
end