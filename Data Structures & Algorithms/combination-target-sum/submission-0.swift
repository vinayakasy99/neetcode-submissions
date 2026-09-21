class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var res: [[Int]] = []
        let sortedNums = nums.sorted()

        func dfs(_ i: Int, _ cur: inout [Int], _ total: Int) {
            if total == target {
                res.append(cur)
                return
            }

            for j in i..<sortedNums.count {
                if total + sortedNums[j] > target {
                    return
                }
                cur.append(sortedNums[j])
                dfs(j, &cur, total + sortedNums[j])
                cur.removeLast()
            }
        }

        var cur: [Int] = []
        dfs(0, &cur, 0)
        return res
    }
}