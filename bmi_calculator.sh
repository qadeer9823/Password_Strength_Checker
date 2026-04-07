

#!/bin/bash

read -p "Enter your weight (kg): " weight
read -p "Enter your height (meters): " height

bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

echo "Your BMI is: $bmi"

if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "Category: Underweight"
elif (( $(echo "$bmi >= 18.5 && $bmi <= 24.9" | bc -l) )); then
    echo "Category: Normal"
elif (( $(echo "$bmi >= 25 && $bmi <= 29.9" | bc -l) )); then
    echo "Category: Overweight"
else
    echo "Category: Obese"
fi
