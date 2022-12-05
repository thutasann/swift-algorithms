
// MARK: - BINARY SEARCH ALGORITHM
let numArray = [4,2,10,16,14,99,87,64]


// MARK: - Use While Loop
func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    
    // Start from smallest
    let array = array.sorted(by: <)
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    
    // While loop -> to find middleIndex
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if searchValue == middleValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}

// MARK: - Use Recursion
func alternateBinarySearch(searchValue: Int, array: [Int]) -> Bool {
    
    if array.count == 0 { return false }
    
    var sortedArray = array.sorted(by: <)
    
    let leftIndex = 0;
    let rightIndex = array.count - 1
    
    let middleIndex = (leftIndex + rightIndex) / 2
    let middleValue = array[middleIndex]
    
    if searchValue < sortedArray[leftIndex] || searchValue > sortedArray[rightIndex]{
        return false
    }
    
    if searchValue == middleValue {
        return true
    }
    
    if searchValue < middleValue {
        sortedArray = Array(sortedArray[leftIndex...middleIndex - 1])
        print(sortedArray)
        return alternateBinarySearch(searchValue: searchValue, array: sortedArray)
    }
    
    if searchValue > middleValue {
        sortedArray = Array(sortedArray[middleIndex + 1...rightIndex])
        print(sortedArray)
        return alternateBinarySearch(searchValue: searchValue, array: sortedArray)
    }
    
    return false
}

alternateBinarySearch(searchValue: 92, array: numArray)
