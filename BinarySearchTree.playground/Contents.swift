
// MARK: - BINARY SEARCH TREE
class BinarySearchTree{
    
    var value: Int
    var left: BinarySearchTree?
    var right: BinarySearchTree?
    var parent: BinarySearchTree?
    
    // Initialize the value
    init(value: Int){
        self.value = value
    }
    
    // isLeaf
    var isLeaf: Bool {
        return left == nil && right == nil
    }
}


// MARK: - INSERT
extension BinarySearchTree{
    
    // Insert parent
    func insert(value: Int){
        insert(value: value, parent: self)
    }
    
    // Intset Nodes to Our Binary Search Tree
    private func insert(value: Int, parent: BinarySearchTree){
    
        // left Node
        if (value < self.value){
            
            if let left = left{ // check left node alrdy existed
                left.insert(value: value, parent: self) // recursion if existed
            } else{
                left = BinarySearchTree(value: value)
            }
            
        }
        // right node
        else{
            
            if let right = right{ // check right node alrdy existed
                right.insert(value: value, parent: self) // recursion if existed
            } else{
                right = BinarySearchTree(value: value)
            }
            
        }
        
    }
    
}

// MARK: - SEARCH
extension BinarySearchTree{
    
    // Search and return Tree
    func searchAndReturnTree(forValue value: Int) -> BinarySearchTree?{
        
        if value == self.value{
            print(self)
            return self
        }
        
        if value < self.value {
            if let left = left{
                return left.searchAndReturnTree(forValue: value)
            }
        } else {
            if let right = right {
                return right.searchAndReturnTree(forValue: value)
            }
        }
        return nil
    }
    
    // Search Value
    func search (forValue value: Int) -> Bool{
        
        if value == self.value{
            return true
        }
        
        if value < self.value {
            
            if let left = left{
                return left.search(forValue: value)
            }
            
        } else {
            
            if let right = right {
                return right.search(forValue: value)
            }
            
        }
        
        return false
    }
    
}

// MARK: - DETERMINE THE HEIGHT OF OUR TREE AND THE DEPTH OF EACH PARTICULAR NODES
extension BinarySearchTree{
    
    // minimum -> left most node
    func minimum() -> Int{
        
        var node = self
        
        while let left = node.left {
            node = left
        }
        return node.value
        
    }
    
    // maximum -> right most node
    func maximum() -> Int {
        
        var node = self
        
        while let right = node.right{
            node = right
        }
        return node.value
        
    }
    
    // height of our particular node
    func height() -> Int {
        if tree.isLeaf{
            return 0
        } else{
            return 1 + max(left?.height() ?? 0, right?.height() ?? 0)
        }
    }
    
    // depth of our particular node
    func depth(ofValue value : Int) -> Int {
        var depth = 0
        
        guard var tree = searchAndReturnTree(forValue: value) else { return 0}
        
        while let parent = tree.parent{
            tree = parent
            depth += 1
        }
        return depth
    }
    
}


// MARK: - STRING CONVERTIBLE PROTOCOL (when converting instance to String)
extension BinarySearchTree: CustomStringConvertible{
    
    var description: String{
        
        var result = ""
        
        if let left = left{
            result += "\(left.description) <- "
        }
        
        result += "\(value)"
        
        if let right = right{
            result += " -> \(right.description)"
        }
        
        return result
        
    }
}


// MARK: - RUN THE PLAYGROUND

let tree = BinarySearchTree(value: 8)

tree.insert(value: 6)
tree.insert(value: 10)

tree.insert(value: 4)
tree.insert(value: 12)

tree.insert(value: 2)
tree.insert(value: 14)

print("tree", tree)

//tree.search(forValue: 14)

//tree.searchAndReturnTree(forValue: 6)
tree.depth(ofValue: 4)

//tree.minimum()
//tree.maximum()

//print("tree height", tree.height())


// Algorithms Explained at - https://www.geeksforgeeks.org/binary-search-tree-data-structure/
