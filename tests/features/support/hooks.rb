Before do
    browser = Capybara.current_session.driver.browser
    browser.manage.delete_cookie '_al_session'
end


After do |scenario|

scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        tirar_foto(scenario_name.downcase!, 'falhou')
    end

end