    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var newNums = nums
        var arrBi: [[Int]] = []

        while !newNums.isEmpty {
            var seen: Set<Int> = []
            var uniqueArr: [Int] = []

            var i = 0
            while i < newNums.count {
                let num = newNums[i]
                if !seen.contains(num) {
                    seen.insert(num)
                    uniqueArr.append(num)
                    newNums.remove(at: i)
                } else {
                    i += 1
                }
            }
            arrBi.append(uniqueArr)
        }
        return arrBi
    }
