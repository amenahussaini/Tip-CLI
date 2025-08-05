# Meal Order CLI Functional Specification
This is a simple Ruby command-line application that allows users to enter their meal orders (including drinks), calculate the total cost, and add a tip percentage to generate a final bill.

## User Stories
### Basic Operations
- I want to input the dishes I ordered and their prices, so that I can keep track of my total spending.
- I want to specify a tip percentage, so that I can ensure my final bill includes gratuity.
- I want the app to show me a formatted final bill, so that I know exactly how much to pay including the tip.

## Functional Requirements
### Inputs:
- Number of items ordered
- Name of each dish
- Price of each dish
- Tip percentage

### Outputs
- List of dishes and their individual prices
- Total before tip
- Tip amount
- Final total with tip included

## User Interface
This app runs in a terminal and uses prompts for user input:

### Example Session:

How many items including drinks did you order? 3

Thank you for eating with us.
Please enter the dish(es) you ordered.

1. Enter dish name: burger
1. Price of Burger dish: 9.99

2. Enter dish name: fries
2. Price of Fries dish: 4.50

3. Enter dish name: soda
3. Price of Soda dish: 2.00

How much tip in percentage(%) would you like to add? 15

FINAL BILL:
Burger $9.99
Fries $4.50
Soda $2.00

Total without Tip: $16.49
Tip (15%): $2.47
Total with Tip: $18.96