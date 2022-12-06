// MARK: - FIND NUMS DIVIDED BY

var greeting = "Hello, playground"


let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

for num in numbers{
    
    if num % 3 == 0 && num % 5 == 0 {
        print("\(num) FizzBuzz")
    }
    else{
        if num % 3 == 0 {
            print("\(num) Fizz")
        }
        else if num % 5 == 0 {
            print("\(num) Buzz")
        }
        else{
            print(num)
        }
    }
}

print("-------")

// MARK: - For One Thousands Numbers

var oneThousandsNumbers = [Int]()

for i in 1...1000{
    oneThousandsNumbers.append(i)
}

for num in oneThousandsNumbers{
    
    if num % 15 == 0 {
        print("\(num) FizzBuzz")
    }
    else if num % 3 == 0 {
        print("\(num) Fizz")
    }
    else if num % 5 == 0 {
        print("\(num) Buzz")
    }
    else{
        print(num)
    }
}
