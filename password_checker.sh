read -s -p "Enter your password: " password
echo

length_ok=false
number_ok=false
uppercase_ok=false

if [ ${#password} -ge 8 ]; then
    length_ok=true
fi

if [[ $password =~ [0-9] ]]; then
    number_ok=true
fi

if [[ $password =~ [A-Z] ]]; then
    uppercase_ok=true
fi

if $length_ok && $number_ok && $uppercase_ok; then
    echo "Strong password ✅"
else
    echo "Weak password ❌"
    [ $length_ok = false ] && echo "- At least 8 characters"
    [ $number_ok = false ] && echo "- At least one number"
    [ $uppercase_ok = false ] && echo "- At least one uppercase letter"
fi
