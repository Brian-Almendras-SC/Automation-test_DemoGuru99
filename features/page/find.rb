class FindCucumber
    include Complements
    @DIRDNS= "http://www.google.com"
    def initialize
        Capybara.app_host =@DIRDNS
    end
    def findByXpath(dirXpath)
        return find(:xpath,dirXpath)
    end
    def findByCSS(dirCSS)
        return find(:css,dirCSS)
    end
    def setAnotherDir()
        visit "http://www.google.com"
    end
end