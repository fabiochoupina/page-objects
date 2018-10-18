class  HomePage < SitePrism::Page
    element :input_name, 'input[data-aid="CONTACT_FORM_NAME"]'
    element :input_email, 'input[data-aid="CONTACT_FORM_EMAIL"]'
    element :input_message, 'textarea[data-aid="CONTACT_FORM_MESSAGE"]'
    element :button_send, 'button[type=submit]'

    def fill_personal_info (name, email)
        input_name.set name
        input_email.set email
    end
    
    def submit_message
        button_send.click
    end

end 