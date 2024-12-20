# Function to check if a number is even or odd
def check_even_odd(number):
    if number % 2 == 0:
        return "Even"
    else:
        return "Odd"
# Loop through numbers 1 to 10 and check if they are even or odd
for i in range(1, 11):
    result = check_even_odd(i)
    print(f"Number {i} is {result}.")

