class Search
    include Complements
    def searchAndFillForName valueToSearch
        fill_in('q',:with => valueToSearch).native.send_keys(:return)
        #fill_in(nameToSearch,:with => valueToSearch).native.send_keys(:return)
    end
end