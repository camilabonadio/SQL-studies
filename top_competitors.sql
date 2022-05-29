/*
Challenge description: 

Top Competitors by HackerRank
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

Resposta feita em MS SQL Server
*/


SELECT
    h.hacker_id,
    h.name
    
FROM Hackers as h 
    JOIN Submissions as s on s.hacker_id = h.hacker_id
    JOIN Challenges as c on c.challenge_id = s.challenge_id
    JOIN Difficulty as d on d.difficulty_level = c.difficulty_level

WHERE 
s.score = d.Score 
AND c.difficulty_level = d.difficulty_level

GROUP BY h.hacker_id, h.name

HAVING COUNT(h.hacker_id) > 1

ORDER BY
    COUNT(h.hacker_id) DESC, h.hacker_id ASC
