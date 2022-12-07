class Search
    include Complements
    def searchAndFill valueToSearch
        fill_in('q',:with => valueToSearch).native.send_keys(:return)
    end
    def searchAndFillForName(nameId,valueToSearch)
        fill_in(nameId,:with => valueToSearch).native.send_keys(:return)
    end
end