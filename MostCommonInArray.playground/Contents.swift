// MARK: - MOST COMMON NAME IN ARRAY

func mostCommonNameInArray(array: [String]) -> String{
    
    var nameCountDictionary = [String: Int]()
    
    // find names and its count
    for name in array {
        
        if let count = nameCountDictionary[name]{
            nameCountDictionary[name] = count + 1
        }
        else{
            nameCountDictionary[name] = 1
        }
        
    }
    
    var mostCommonName = ""
    
    // find most common name
    for key in nameCountDictionary.keys{
        
        if mostCommonName == ""{
            mostCommonName = key
        }else{
            var count = nameCountDictionary[key]
            if count > nameCountDictionary[mostCommonName]{
                mostCommonName = key
            }
        }
        print("\(key) : \(nameCountDictionary[key]!)")
    }
    
    return mostCommonName
}


// MARK: - PLAYGROUND
mostCommonNameInArray(array: ["Bob", "Sally", "Bob", "Sam", "Micheal", "Bob", "Micheal"])
