#Create a monitor_transactions.sh script that: Scans the transaction_log.txt. 
echo "Suspicious Transactions:"

#Identifies any withdrawals of ₹50,000 or more and prints a summary of those transactions.
if [ ! -f transaction_log.txt ]; then
    echo "No transaction logs found."
    exit 1
fi

grep -E "withdraw: [5-9][0-9]{4}|withdraw: [0-9]{6,}" transaction_log.txt
#Sample output: 
  # Suspicious Transactions:  2024-10-26 14:10:32 | Account: 67890 | Withdraw: 50000
