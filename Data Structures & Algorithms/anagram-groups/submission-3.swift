class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var mapData = [String: [String]]()
        for word in strs {
            let key = String(word.sorted())
            mapData[key, default: []].append(word)
        }
        return Array(mapData.values)
    }
}
