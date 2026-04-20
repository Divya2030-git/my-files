# importing all modules
import addition 
import subtraction
import multiplication
import division
import modulosDivision

Operations = (
    "1. Addition /n",
    "2. subtraction /n",
    "3. Multiplation /n",
    "4. Division /n",
    "5. Modulos Division /n"
)


# main function
if __name__ == "__main__":
    print("Welcome to simple calculator, It will do two numbers operations")
    while True:
        print(*Operations)
        choice = int(input("please select your operations(1-6): "))
        if choice == 1:
            num1 = int(input("Enter number 1: "))
            num2 = int(input("Enter number 2: "))
            print(addition.add(a =num1, b = num2)) 
        elif choice == 2:
            num1 = int(input("Enter number 1: "))
            num2 = int(input("Enter number 2: "))
            print(subtraction.sub(a =num1, b = num2))
        elif choice == 3:
            num1 = int(input("Enter number 1: "))
            num2 = int(input("Enter number 2: "))
            print(multiplication.mul(a =num1, b = num2))
        elif choice == 4:
            num1 = int(input("Enter number 1: "))
            num2 = int(input("Enter number 2: "))
            print(division.div(a =num1, b = num2))
        elif choice == 5:
            num1 = int(input("Enter number 1: "))
            num2 = int(input("Enter number 2: "))
            print(modulosDivision.modDiv(a =num1, b = num2))
        elif choice == 6:
            print("exiting from calculator")
            exit()
        else:
            print("Please select the operation between 1-6")            

        



          





