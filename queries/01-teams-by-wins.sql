-- Q: Which teams won the most games in 1984?
SELECT name, wins, losses
FROM teams
WHERE year = 1984
ORDER BY wins DESC;
-- verdict: trust. Because the SQL asks for 1984 and sorts by wins, and the Tigers on top with 104 is the season Detroit remembers.
