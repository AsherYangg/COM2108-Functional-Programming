gradeBands :: [(String, Int)] -> (Int, Int, Int, Int, Int, Int)
gradeBands grades = (countLessThan30, count30To39, count40To49, count50To59, count60To69, count70Plus)
  where
        countLessThan30 = length (filter (\(_,score) -> score < 30) grades)
        count30To39 = length (filter (\(_,score) -> score >= 30 && score < 40 ) grades)
        count40To49 = length (filter (\(_,score) -> score >= 40 && score < 50 ) grades)
        count50To59 = length (filter (\(_,score) -> score >= 50 && score < 60 ) grades)
        count60To69 = length (filter (\(_,score) -> score >= 60 && score < 70 ) grades)
        count70Plus = length (filter (\(_,score) -> score >= 70  ) grades)