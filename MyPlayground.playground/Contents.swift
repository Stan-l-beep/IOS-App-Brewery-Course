//Don't change this
var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
    
    //Write your code here.
    
    let Amy = studentsAndScores["Amy"]!
    let James = studentsAndScores["James"]!
    let Helen = studentsAndScores["Helen"]!
    
    var temp = 0
    
    if Amy > temp{
        temp = Amy
    }
    if James > temp
    { temp = James
        
    }
    if Helen > temp {
        temp = Helen
    }
    highestScore("Amy": 54, "James": 13, "Helen":154)
}
