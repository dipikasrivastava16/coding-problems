class Tree {
    var rootNode:TreeNode
    init(rootNode: TreeNode) {
        self.rootNode = rootNode
    }
    func heightOfTree(_ root: TreeNode?) ->Int {
        if root == nil { return 0 }
        let leftlength = heightOfTree(root?.leftChild)
        let rightlength = heightOfTree(root?.rightChild)
        return max(leftlength+1, rightlength+1)
        
    }
    func inOrderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {return []}
        var result = [Int]()
        result+=(inOrderTraversal(root?.leftChild))
        result.append(root!.value)
        result+=(inOrderTraversal(root!.rightChild))
        return result
    }
    func preOrderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {return []}
        var result = [Int]()
        result.append(root!.value)
        result+=(preOrderTraversal(root?.leftChild))
        result+=(preOrderTraversal(root!.rightChild))
        return result
    }
    func postOrderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {return []}
        var result = [Int]()
        result+=(postOrderTraversal(root?.leftChild))
        result+=(postOrderTraversal(root!.rightChild))
        result.append(root!.value)
        return result
    }
}
class TreeNode {
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    var value: Int
    init(_ value: Int, _ leftChild: TreeNode?, _ rightChild: TreeNode?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}
