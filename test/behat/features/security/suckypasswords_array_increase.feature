@javascript @core @core_login
Feature: Suckypasswords Test increase of array size
 In order to limit the crappy passwords people try to put in
 As an admin
 So I can make sure that my users/myself have decent passwords

Background:
 Given the following "users" exist:
    | username | password | email | firstname | lastname | institution | authname | role |
    | UserA | Kupuhipa1 | UserA@example.org | Angela | User | mahara | internal | member |

Scenario: Admin can't change password to anything on suckypasswords list (Bug #844457)
 Given I log in as "admin" with password "Kupuhipa1"
 And I choose "Settings" from user menu
 And I fill in "Current password" with "Kupuhipa1"
 And I fill in "New password" with "abc123"
 And I fill in "Confirm password" with "abc123"
 And I press "Save"
 And I should see "Your password is too easy"
 And I fill in "Current password" with "Kupuhipa1"
 And I fill in "New password" with "dragon"
 And I fill in "Confirm password" with "dragon"
 And I press "Save"
 And I should see "Your password is too easy"
 And I fill in "Current password" with "Kupuhipa1"
 And I fill in "New password" with "administrator"
 And I fill in "Confirm password" with "administrator"
 And I press "Save"
 And I should see "Your password is too easy"
 And I fill in "Current password" with "Kupuhipa1"
 And I fill in "New password" with "mahara"
 And I fill in "Confirm password" with "mahara"
 And I press "Save"
 And I should see "Your password is too easy"
 And I log out

Scenario: Student can't change password to anything on suckypasswords list (Bug #844457)
 Given I log in as "UserA" with password "Kupuhipa1"
 And I choose "Settings" from user menu
 And I fill in "Current password" with "Kupuhipa1"
 And I fill in "New password" with "abc123"
 And I fill in "Confirm password" with "abc123"
 And I press "Save"
 And I should see "Your password is too easy"
 And I fill in "Current password" with "Kupuhipa1"
 And I fill in "New password" with "dragon"
 And I fill in "Confirm password" with "dragon"
 And I press "Save"
 And I should see "Your password is too easy"
 And I fill in "Current password" with "Kupuhipa1"
 And I fill in "New password" with "administrator"
 And I fill in "Confirm password" with "administrator"
 And I press "Save"
 And I should see "Your password is too easy"
 And I fill in "Current password" with "Kupuhipa1"
 And I fill in "New password" with "mahara"
 And I fill in "Confirm password" with "mahara"
 And I press "Save"
 And I should see "Your password is too easy"
 And I log out
