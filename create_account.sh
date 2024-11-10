#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <username> <account_number>"
    exit 1
fi

# Input parameters: username and account number
username=$1
account_number=$2
# Default balance for new accounts
default_balance=1000

# Check if account already exists in accounts.txt
if id "$username" &>/dev/null; then
    echo "User $username already exists on the system."
else
    # Create the user in the system
    sudo useradd -m "$username"
    echo "System user $username created."
fi


# Add the new account to accounts.txt

echo "Username: $username | Account: $account_number | Balance: $default_balance" >> accounts.txt

echo "Account for $username created with account number $account_number and balance ₹$$default_balance."

# Create the user in the system (if running in a real Linux environment)
#todo



