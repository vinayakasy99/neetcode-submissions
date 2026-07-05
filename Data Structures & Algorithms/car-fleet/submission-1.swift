class Solution {

    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {

        var cars: [(position: Int, time: Double)] = []

        for i in 0..<position.count {
            let time = Double(target - position[i]) / Double(speed[i])
            cars.append((position[i], time))
        }

        // Sort by position descending
        cars.sort { $0.position > $1.position }

        var stack: [Double] = []

        for car in cars {

            if stack.isEmpty || car.time > stack.last! {
                stack.append(car.time)
            }
            // Else: current car joins the fleet ahead
        }

        return stack.count
    }
}