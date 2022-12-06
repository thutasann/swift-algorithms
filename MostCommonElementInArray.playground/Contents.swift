// MARK: - FIND MOST COMMON ELEMENT IN ARRAY

var colors = ["Red", "Green", "Blue", "Red", "Red", "Blue", "Blue", "Blue"]

func mostCommonElement(inArray array: [String]) -> String? {
    var result: String?
    var dictionary = [String: Int]()
    
    array.forEach { element in
        
        if let count = dictionary[element] {
            dictionary[element] = count + 1
            print("If Block -> Color: \(element) Count is \(dictionary[element])")
        } else {
            dictionary[element] = 1
            print("Else Block -> Color: \(element) Count is \(dictionary[element])")
        }
        
    }
    
    var max = 0
    
    print("dictionary -> ", dictionary)
    
    for (key, value) in dictionary {
        if value > max {
            max = value
            result = key
        } else{
            print("Not max value")
        }
    }
    
    
    return result
}

// MARK: - PlayGround
mostCommonElement(inArray: colors)
