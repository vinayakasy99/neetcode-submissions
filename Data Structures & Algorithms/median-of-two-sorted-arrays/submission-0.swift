class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

        // Always binary search on the smaller array
        if nums1.count > nums2.count {
            return findMedianSortedArrays(nums2, nums1)
        }

        let x = nums1.count
        let y = nums2.count

        var low = 0
        var high = x

        while low <= high {

            let partitionX = (low + high) / 2
            let partitionY = (x + y + 1) / 2 - partitionX

            let maxLeftX = partitionX == 0
                ? Int.min
                : nums1[partitionX - 1]

            let minRightX = partitionX == x
                ? Int.max
                : nums1[partitionX]

            let maxLeftY = partitionY == 0
                ? Int.min
                : nums2[partitionY - 1]

            let minRightY = partitionY == y
                ? Int.max
                : nums2[partitionY]

            if maxLeftX <= minRightY && maxLeftY <= minRightX {

                // Even total length
                if (x + y) % 2 == 0 {
                    return Double(max(maxLeftX, maxLeftY) + min(minRightX, minRightY)) / 2.0
                }

                // Odd total length
                return Double(max(maxLeftX, maxLeftY))

            } else if maxLeftX > minRightY {
                high = partitionX - 1
            } else {
                low = partitionX + 1
            }
        }

        return 0.0
    }
}