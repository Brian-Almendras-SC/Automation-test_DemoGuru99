class FindCucumber
    include Complements
    def findByXpath(dirXpath)
        return find(:xpath,dirXpath)
    end
    def findByCSS(dirCSS)
        return find(:xpath,dirCSS)
    end
end