@javascript @core @core_messages
Feature: Clicking on Inbox
   In order to click on the Inbox block's 'More' link
   As a student user
   So I can see more of my messages

Background:
Given the following "users" exist:
     | username | password | email | firstname | lastname | institution | authname | role |
     | UserA | Kupuhipa1 | UserA@example.org | Angela | User | mahara | internal | member |
     | UserB | Kupuhipa1 | UserB@example.org | Bob | User | mahara | internal | member |
     | UserC | Kupuhipa1 | UserC@example.org | Cecilia | User | mahara | internal | member |
     | UserD | Kupuhipa1 | UserD@example.org | Dmitri | User | mahara | internal | member |
     | UserE | Kupuhipa1 | UserE@example.org | Evonne | User | mahara | internal | member |
     | UserF | Kupuhipa1 | UserF@example.org | Fergus | User | mahara | internal | member |
     | UserG | Kupuhipa1 | UserG@example.org | Gabi | User | mahara | internal | member |

And the following "messages" exist:
     | emailtype | to | from | subject | messagebody | read | url | urltext |
     | friendrequest | UserA | UserB | New friend request | Friend request from Bob | 1 | user/view.php?id=[from] | Requests |
     | friendrequest | UserA | UserC | New friend request | Friend request from Cecilia | 1 | user/view.php?id=[from] | Requests |
     | friendrequest | UserA | UserD | New friend request | Friend request from Dmitri | 1 | user/view.php?id=[from] | Requests |
     | friendrequest | UserA | UserE | New friend request | Friend request from Evonne | 1 | user/view.php?id=[from] | Requests |
     | friendrequest | UserA | UserF | New friend request | Friend request from Fergus | 1 | user/view.php?id=[from] | Requests |
     | friendrequest | UserA | UserG | New friend request | Friend request from Gabi | 1 | user/view.php?id=[from] | Requests |
     | friendaccept | UserG | UserA | Friend request accepted | Friend request accepted from Angela | 1 | user/view.php?id=[to] | |

Scenario: Clicking on the Inbox link on the right menu (Bug 1427019)
   # Log in as users
   Given I log in as "UserA" with password "Kupuhipa1"
   # Navigating to the Inbox via the 'more' link in the Inbox block
   And I follow "More"
   # Verifying that you do not see a page full of error messages
   And I should not see "Call stack"
   And I should see "Notifications"
   And I should see "Compose"
