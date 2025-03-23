calculate() {
    case $1 in
    1) result=$(($2 + $3)) ;;
    2) result=$(($2 - $3)) ;;
    3) result=$(($2 * $3)) ;;
    4)
        if [ "$3" -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
            exit 1
        else
            result=$(($2 / $3))
        fi
        ;;
    *)
        echo "Invalid option"
        exit 1
        ;;
    esac
    echo "Result: $result"
}

# Display menu
echo "Select an arithmetic operation:"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"
read -p "Enter your choice (1-4): " choice

# Read numbers from the user
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Call function to perform calculation
calculate $choice $num1 $num2
