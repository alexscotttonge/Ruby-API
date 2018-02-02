## Overview

The problem is based around producing an app that can answer some questions about data held in a public API.

## Task

Create a script that can be run from the command line and can answer the questions listed below. The script accepts one parameter to specify which question it will answer and in some cases an optional argument. The script will print the answer to the console output.

```
ruby app.rb COMMAND PARAMETERS
```

The script implements the following commands:
- most_loyal: What is the email address of the most loyal user (most purchases)? highest_value:
- What is the email address of the highest value user? most_sold: What is the name of the most sold item?
- Further commands: total_spend [EMAIL], average_spend [EMAIL], highest_value

## Approach
- In the time I had available I focused on clean code and extracting classes to reduce dependencies with clear method names and responsibilities
- Further work is needed to reduce hard-coded values for some of the specs and using stubs for the API tests

## Example output
- ```$ ruby app.rb most_loyal```
- ```$ bogisich_judah@hilperttromp.biz```

## Test Coverage
- 93%

## Testing
Install ```rspec```

```gem install rspec```

Then run tests:
```$ rspec```
