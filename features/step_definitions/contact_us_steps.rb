Given("that I'm on the home page") do
  visit 'https://wellingtontesters.co.nz/'
end

Given("my name is {string} and my email is {string}") do |name, email|
    @homepage.fill_personal_info(name,email)

    # find('input[data-aid="CONTACT_FORM_NAME"]').set name
    # find('input[data-aid="CONTACT_FORM_EMAIL"]').set email
  end
  
  When("I send the following message {string}") do |message|
    find('textarea[data-aid="CONTACT_FORM_MESSAGE"]').set message
    @homepage.submit_message.click
    
    # find('button[type=submit]').click
  end
  
  Then("the message is sent successfully") do
    expect(page).to have_content "Thank you for your inquiry! We will get back to you within as soon as possible."
  end
  
  Then("the message is not sent successfully") do
    expect(page).not_to have_content "Thank you for your inquiry! We will get back to you within as soon as possible."
  end
  
  Then("the message is not sent successfully and the {string} is displayed") do |alert|
    expect(page).to have_content alert
  end