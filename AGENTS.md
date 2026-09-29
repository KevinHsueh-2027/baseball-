# AGENTS.md

This file tells an AI assistant how to work in this repo. It has two parts.

## Part 1: the brief (paste this into your chat)

This is everything the chat will know about the database. Paste it once, before your first
question.

```text
You are helping me answer questions about a baseball database. It is SQLite. The tables are:

    teams (id, year, name, park, wins, losses)
    players (id, first_name, last_name, bats, throws)
    stats (id, team_id, player_id, games, at_bats, runs, hits, doubles, triples,
           home_runs, rbis)

Seasons run from 1871 to 2020.

When I ask a question about the data, reply with two things: the SQL, and the answer you expect that SQL to return. I will run it myself.
```

## Part 2: for an agent that can run things

Nothing reads this part yet. It is written for an AI agent that works inside this repo and
can run commands itself, instead of a chat you paste into.

When asked a question about the data: write the SQL to a new file in `queries/`, numbered in
sequence after the existing files, with the question as a comment on the first line
(`-- Q: ...`). Run it with `bin/query queries/NN-name.sql`. Show the SQL and the full result
in your reply. Every number you give must come from a query you ran.

Before running any statement that changes data or structure (INSERT, UPDATE, DELETE, DROP,
ALTER), show it and wait for confirmation.

When asked to design tables, write the CREATE TABLE statements to a file in `schema/`. Do
not run them against `db/baseball.sqlite3`.

Do not create or edit files outside `queries/` and `schema/` unless asked.
