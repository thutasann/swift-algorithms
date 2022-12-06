// MARK: - BINARY SEARCH TREE V.2

let numbers = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]

var hundred = [Int]()
for i in 1...100 {
    hundred.append(i)
}

// MARK: - Linear Search
func linearSearchForSearchValue(searchValue: Int, array: [Int]) -> Bool{
    for num in array{
        if num == searchValue{
            return true
        }
    }
    return false
}

// MARK: - Binary Search
func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex{

        let middleIndex = (leftIndex + rightIndex)/2
        let middleValue = array[middleIndex]
        
        print("MiddleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(array[leftIndex]), \(array[rightIndex])]")
        
        if middleValue == searchValue{
            return true
        }
        // left
        if searchValue < middleValue{
            rightIndex = middleIndex - 1
        }
        // right
        if searchValue > middleValue{
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}


// MARK: - PLAYGROUND

//print(linearSearchForSearchValue(searchValue: 4, array: numbers))

//print(binarySearchForSearchValue(searchValue: 18, array: numbers))

print(binarySearchForSearchValue(searchValue: 99, array: hundred))
