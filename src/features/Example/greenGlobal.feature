Feature: Sample MenuBar test
    As a developer
    I should be able click MenuBar website Green Global

    Scenario: open URL check Title
        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/dang-nhap"
        Then  I pause for 3000ms
        When  I set "anvt@danang.gov.vn" to the inputfield "[name='Username']"
        When  I set "tttp@123" to the inputfield "[name='Password']"
        When  I submit the form ".login-form"
        Then  I pause for 2000ms
        When  I scroll to element "footer"
        When  I click on the element "[class='footer-container']"
        Then  I pause for 3000ms
