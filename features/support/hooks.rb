After do |scenario|
    @nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')    
    tirar_foto(@nome, 'screenshots/test_passed') 
    if   scenario.failed?    
        unless tirar_foto(@nome, 'screenshots/test_failed')   
        end
end

end