# WebJump Automation Project

To develop it, I've used these tools:

- Windows 10
- Ruby 2.6
- Cucumber 3.1.2
- Bundler 2.1.4
- Chrome 83.0.4103.61
- Chrome WebDrive 83.0.4103.39

This project has the goal of automate webjump test plataform with structure using Robotframework in Python, also has
implementation of the design pattern page objects.

The project uses BDD to write test scenarios and it's structure was constructed to be similar with Cucumber implementation.

## Requirements

You'll need to install the following:

- Ruby (Recommended version 2.6)
- Bundler gem (Recommended version 2.1.4)
- Chrome WebDriver (According to your chrome version)

## Installation

You can install the project after having installed Ruby 2.6.

Installing bundler:
Run the the following command line in the project root path:

```Ruby
  gem install bundler -v 2.1.4
```

Using bundler:
First of all, you need to be in the project root path,
Bundler will install all needed gems to run this automation.
Run the the following command line:

```Ruby
  bundle install
```

**This command should install all the libraries needed to run the project.**

To run the tests, you just need to run the following command:

```Ruby
  cucumber
```

If you want to run a specific test scenario, use the tag argument.
Ex:

```Ruby
  cucumber -t @tag_you_want_to_use
```

Available tags:
@create_user
@e2e

Ps: @e2e scenario may fail due to a cron job on the server that block account created within more than 15 minutes. To avoid it, run the @create_user first.


To generate the report with results and screenshots, I've used the report builder tool.
All the results should be on the results\ folder after running the automation.
