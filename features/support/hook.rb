require_relative '../page/base'

Before do |scenario|
    @page=Base.new    
end

Before do 
    page.driver.browser.manage.window.maximize
end