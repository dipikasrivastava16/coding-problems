//Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.


/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        if root == nil {return false}
        if sum - root!.val == 0 && root!.left == nil && root!.right == nil {
            return true
        }
        let flagLeft = hasPathSum(root!.left,sum - root!.val)
        if flagLeft == true {
            return true
        }
        let flagRight = hasPathSum(root!.right, sum - root!.val)
        return flagRight
        
    }
}
