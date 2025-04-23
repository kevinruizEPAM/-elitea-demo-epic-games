# Epic Games Store Automation Framework

## Overview
This framework automates testing for the Epic Games Store website using Robot Framework and Python.

## Prerequisites
- Python 3.8+
- Robot Framework
- SeleniumLibrary

## Installation
1. Clone the repository: `git clone <repo-url>`
2. Switch to the automation branch: `git checkout epic-games-store-automation`
3. Install dependencies: `pip install -r requirements.txt`

## Execution
- Run tests: `robot tests/`
- Generate reports: `robot --outputdir reports tests/`

## Test Cases
1. Homepage load verification
2. Search functionality
3. Login functionality
4. Add to cart
5. Checkout process
6. Remove from cart
7. Filter and sort
8. Wishlist functionality
9. Product details display
10. Responsiveness testing

## Project Structure
```
EpicGamesStoreAutomation/
├── tests/
│   ├── test_homepage.robot
│   ├── test_search.robot
│   ├── test_login.robot
│   ├── test_cart.robot
│   ├── test_checkout.robot
│   ├── test_remove_cart.robot
│   ├── test_filter_sort.robot
│   ├── test_wishlist.robot
│   ├── test_product_details.robot
│   ├── test_responsiveness.robot
├── resources/
│   ├── locators.robot
│   ├── variables.robot
├── keywords/
│   ├── custom_keywords.py
├── configs/
│   ├── environment_variables.robot
├── reports/
├── README.md
├── requirements.txt
```

## Contributing
Please follow the guidelines in CONTRIBUTING.md for adding new features or test cases.

## License
MIT License
