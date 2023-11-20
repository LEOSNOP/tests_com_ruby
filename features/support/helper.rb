module Helper
    def tirar_foto(name_file, folder = 'screenshots/test_screens')
        file = "#{folder}/#{name_file}.png"     
        FileUtils.mkdir_p(folder) unless File.exist?(folder)   
    
        Capybara.page.driver.browser.save_screenshot(file)
    end
end