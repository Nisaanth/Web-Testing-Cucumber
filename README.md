# Web-Testing-Cucumber
## Description

Created a POM (Page Object Model) for the the bbc website sign in page.  Used Cucumber as it  is a Behavior-Driven Development (BDD) framework that allows you to write out specifications in plain English, allowing all stakeholders in a project to understand what's going on.

## Languages used
* Ruby 

## Technologies used 
* Github
* VS Code

## Frameworks, Libraries and Gems used used
* RSpec
* Selenium
* Capybara
* Cucumber
* Gherkin syntax

## How to download
1. To download a copy click on 'clone or download' and you can download it as a zip file.
2. Unzip the file
3. Open in text editor 
4. Install gems if required using 'bundle init'

## Alternative
1. If you choose to clone it go into your terminal.
2. Create a directory
3. Type git clone followed by the link obtained via opening 'clone or download'
4. This will make a copy to the directory you're in.
5. Go to that directory
6. Open file

## How to Use 
1. Create lib folder
2. Put the code into the lib folder
3. Instantiate the super class BbcSite in your _step_defs_rb file
4. Open your env.rb and require_relative with the given path of the bbc_site.rb file
```ruby
    e.g require 'capybara/cucumber'
        require 'rspec'
        require_relative '../lib/bbc_site'  
```
5. Run the method within that BbcSite superclass

## How to test 
1. Run cucmber in your terminal
2. This will show whether your tests have failed or passed

## Challenges 
1. Thinking of different scenarios

## Learning points
1. Learning gherkin syntax
2. Learning cucumber