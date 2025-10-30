#!/bin/bash
# simple-interest.sh
# Author: Arya Shinde
# Description: Bash script to calculate simple interest.

echo "---------------------------------------"
echo "     Simple Interest Calculator"
echo "---------------------------------------"

# Take user inputs
read -p "Enter the Principal amount (P): " p
read -p "Enter the Rate of interest (R): " r
read -p "Enter the Time period (T in years): " t

# Validate input
if [[ -z "$p" || -z "$r" || -z "$t" ]]; then
  echo "Error: All inputs (P, R, T) are required."
  exit 1
fi

# Calculate simple interest
si=$(echo "scale=2; ($p * $r * $t) / 100" | bc)

# Display result
echo ""
echo "Simple Interest = (P × R × T) / 100"
echo "---------------------------------------"
echo "The Simple Interest is: ₹$si"
echo "---------------------------------------"
