class TimeMap {

    private var map = [String: [(Int, String)]]()

    init() {}

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        map[key, default: []].append((timestamp, value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {

        guard let arr = map[key] else {
            return ""
        }

        var left = 0
        var right = arr.count - 1
        var result = ""

        while left <= right {

            let mid = left + (right - left) / 2

            if arr[mid].0 <= timestamp {
                result = arr[mid].1      // Valid candidate
                left = mid + 1           // Look for a later valid timestamp
            } else {
                right = mid - 1
            }
        }

        return result
    }
}