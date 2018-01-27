## Overview

The problem is based around producing an app that can answer some questions about data held in a public API.

## Task

Create a script that can be run from the command line and can answer the questions listed below. The script accepts one parameter to specify which question it will answer and in some cases an optional argument. The script will print the answer to the console output.

```
ruby app.rb COMMAND PARAMETERS
```


The script should implement these commands:
- total_spend [EMAIL]: What is the total spend of the user with this email address [EMAIL]?
- average_spend [EMAIL]: What is the average spend of the user with this email address [EMAIL]?
- most_loyal: What is the email address of the most loyal user (most purchases)? highest_value:
- What is the email address of the highest value user? most_sold: What is the name of the most sold item?
