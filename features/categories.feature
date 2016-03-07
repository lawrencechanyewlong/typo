Feature: Creating and editing categories
  
    As an administrator of a blog
    To easily navigate through blog posts by categories
    I want to be able to create and edit categories
  
Background:
  
    Given the blog is set up 
    And I am logged into the admin panel
    When I follow "Categories"
    
Scenario: Link is not broken
  
    Then I should see "Categories"
    And I should see "Keywords"
    And I should see "Permalink"
    And I should see "Description"
    
Scenario: Creating a new category
  
    When I fill in "Name" with "Lawrence"
    And I fill in "Permalink" with "general" 
    And I press "Save"
    Then I should be on the Categories page
    And I should see "Lawrence"
    And I should see "general"

Scenario: Editing a category
    
    Given I am on the Categories page
    And I follow "Edit"
    Then I should be on the Categories edit page
    
        
    