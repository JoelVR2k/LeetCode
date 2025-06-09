    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var newNums = nums
        var arrBi: [[Int]] = []

        while !newNums.isEmpty {
            var seen: Set<Int> = []
            var uniqueArr: [Int] = []

            var i = 0
            while i < newNums.count {
                if !seen.contains(newNums[i]) {
                    seen.insert(newNums[i])
                    uniqueArr.append(newNums[i])
                    newNums.remove(at: i)
                } else {
                    i += 1
                }
            }
            arrBi.append(uniqueArr)
        }
        return arrBi
    }
