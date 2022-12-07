class Base
    def searchPage
        Search.new
    end
    def findPage
        FindCucumber.new
    end
    def expectPage
        ExpectPage.new
    end
end