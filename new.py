# Sample Python code

def greet_user(name):
    """
    This function greets the user by their name.
    """
    print(f"Hello, {name}! Welcome to Python programming.")

def add_numbers(a, b):
    """
    This function adds two numbers and returns the result.
    """
    return a + b

# Input from the user
user_name = input("Please enter your name: ")
greet_user(user_name)

# Sample addition
num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))
result = add_numbers(num1, num2)

print(f"The sum of {num1} and {num2} is {result}.")
