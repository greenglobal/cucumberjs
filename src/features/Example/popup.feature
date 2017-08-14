Feature: Sample Popup test
    As a developer
    I should be able check the site have popup

    Scenario: open URL
        Given the page url is not "http://webdriverjs.christian-bromann.com/"
        And   I open the url "http://localhost:8080/"
        Then  I expect that the url is "http://localhost:8080/"
        And   I expect that the url is not "http://google.com"
        Then  I expect that the title is "Popup Login & Signup with jQuery"

    Scenario: check the website click button have popup
        Given I open the url "http://localhost:8080/"
        Then  I expect that element ".container" does exist
        Then  I expect that element "#modal" does exist
        When  I click on the element "#modal_trigger"
        And   I click on the element "#login_form"
        And   I set "Hunghbm" to the inputfield "#username"
        And   I set "manhhung123" to the inputfield "#password"
        Then  the checkbox "#remember" is not checked
        When  I click on the element "#remember"
        Then  I expect that checkbox "#remember" is checked
        When  I click on the element ".modal_close"
        Then  a alertbox is not opened
        When  I click on the element "#modalAleart"
        Then  I expect that a alertbox contains the text "I am a alert box!"
        When  I dismiss the alertbox

    Scenario: Test if a new window/tab is not being opened
        Given the page url is "http://localhost:8080/"
        Then  I expect a new window has not been opened

    Scenario: Test if a default link does not open a new window/tab
        Given I open the url "http://localhost:8080/"
        When  I click on the link "Pop-up Window"
        Then  I expect a new window has been opened

    Scenario: Test if a link with target="_blank" does open a new window/tab
        Given I open the url "http://localhost:8080/"
        Then  I expect a new window has been opened
        And   I pause for 8000ms
        Then  I expect a new window has been opened
