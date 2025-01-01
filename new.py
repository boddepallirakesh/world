# Variables and Data Types
name = "Alice"   # String
age = 30         # Integer
height = 5.6     # Float
is_student = True  # Boolean
# Conditional Statements
if age < 18:
    print(f"{name} is a minor.")
elif 18 <= age <= 65:
    print(f"{name} is an adult.")
else:
    print(f"{name} is a senior citizen.")

# Loops
print("Counting to 5:")
for i in range(1, 6):
    print(i)

# While Loop
countdown = 5
print("Countdown:")
while countdown > 0:
    print(countdown)
    countdown -= 1

# Function Definition
def greet(person_name):
    return f"Hello, {person_name}!"

# Calling a Function
greeting_message = greet(name)
print(greeting_message)

# Lists and Iteration
fruits = ["apple", "banana", "cherry"]
print("Fruits:")
for fruit in fruits:
    print(fruit)

# Dictionary and Accessing Keys
person = {"name": "Alice", "age": 30, "city": "Wonderland"}
print(f"{person['name']} lives in {person['city']}.")
