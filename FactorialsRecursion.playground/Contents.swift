// MARK: - Quick Intro to Factorials
// 4! = 4 x 3 x 2 x 1
//    = 12 x 2 = 24

// MARK: - FACTORIALS
func factorialOfValue(value: UInt) -> UInt{
    
    if value == 0 {
        return 1
    }
    
    var product: UInt = 1
    
    for i in 1...value{
        product = product * i
        // print(product)
    }
    
    return product
}

// MARK: - RECURSIVE FUNC
func recursiveFactorialOfValue(value: UInt) -> UInt{
    
    if value == 0 {
        return 1
    }
    
    print(value)
    
    return value * recursiveFactorialOfValue(value: value - 1)
}


// MARK: - PlayGround
//factorialOfValue(value: 4)
recursiveFactorialOfValue(value: 5)
