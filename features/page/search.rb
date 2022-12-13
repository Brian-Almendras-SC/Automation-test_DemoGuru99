class Search
    include Complements
    @DIRDNS= "http://www.google.com"
    def initialize
        Capybara.app_host =@DIRDNS
    end
    def setAnotherDir()
        visit @DIRDNS
    end
    def searchAndFill valueToSearch
        fill_in('q',:with => valueToSearch).native.send_keys(:return)
    end
    def searchAndFillForName(nameId,valueToSearch)
        fill_in(nameId,:with => valueToSearch).native.send_keys(:return)
    end
end