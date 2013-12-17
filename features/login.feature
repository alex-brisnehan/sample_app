Feature: Log in page
	As a site manager of facebook, 
	I want the login page should prompt new users to sign up 
	so I can increase the number of active users.

Scenario: Must be logged out to create an account
	Given I am on the Facebook home page
	Then I should see "Sign up now!"

Scenario: Creating an account with no information
	Given I am on the Facebook home page
	And I go to the account signup page
	And I press "submit"
	Then I should see "prohibited this user from being saved"
	
Scenario: Creating an account
	Given I am on the Facebook home page
	And I go to the account signup page
	And fill in "user_name" with "admin"
	And fill in "user_email" with "ad@min.com"
	And fill in "user_password" with "123456"
	And fill in "user_password_confirmation" with "123456"
	And I press "submit" 
	Then I should see "You Signed up successfully"

Scenario: Logging in to an account
	Given I am on the account sign-in page
	And I fill in "session_email" with "ad@min.com"
	And I fill in "session_password" with "123456"
	And I press "Sign in" 
	Then I should see "Password"

Scenario: Logging in to a non-existant account
	Given I am on the account sign-in page
	And I fill in "session_email" with "ad@min.com"
	And I fill in "session_password" with "12345"
	And I press "Sign in" 
	Then I should see "Invalid email/password combination."