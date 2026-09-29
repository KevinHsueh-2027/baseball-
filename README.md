# Baseball

A small web app on top of a real baseball database: every major league team, player and
season from 1871 to 2020 (from the Chadwick Baseball Bureau).

## The brief

Paste this into your chat before your first question. It is all the chat will know about
the database.

```text
You are helping me answer questions about a baseball database. It is SQLite. The tables are:

    teams (id, year, name, park, wins, losses)
    players (id, first_name, last_name, bats, throws)
    stats (id, team_id, player_id, games, at_bats, runs, hits, doubles, triples,
           home_runs, rbis)

Seasons run from 1871 to 2020.

When I ask a question about the data, reply with two things: the SQL, and the answer you expect that SQL to return. I will run it myself.
```

## Getting started

1. Click **Use this template**, then **Create a new repository** in your own account.
2. In your new repository: **Code**, then **Codespaces**, then **Create codespace on main**.
   The first start takes about three minutes.
3. In the terminal, run `bin/rails server`, then open the port it offers.

## Answering a question

1. Paste the question to your chat, exactly as written.
2. Read what comes back: the SQL, and the number it says to expect.
3. Run the SQL on the **Run SQL** page, the first page the app opens on. Compare the two.
4. Save it as `queries/NN-name.sql` with the question on the first line, as
   `-- Q: ...`, and open the **Queries** page to see it with the others.
5. Decide, and write your decision into the file as the last line:

   ```sql
   -- verdict: trust. Because ...
   ```

   or `-- verdict: don't trust. Because ...`, in one sentence. Commit once, when you have answered them all.

## The registrar

For the modeling lab. This is not about baseball, so start a new chat for it.

```text
We run courses. Each course is offered as one or more sections, each at a set time. A section has a teacher. Students sign up for sections. We need to know who is in which section, and we need each person's contact details.
```

Save what the chat gives you as `schema/school.sql`. Nobody runs it.

## What is where

| Path | What it is |
|---|---|
| `db/baseball.sqlite3` | The database, one file. If anything damages it: `git checkout db/baseball.sqlite3` |
| `queries/` | Your questions, one `.sql` file each. The **Queries** page shows all of them |
| `schema/` | Table designs you write, as `CREATE TABLE` statements. Not run |
| `bin/query FILE` | Runs one `.sql` file from the terminal, if you prefer that to the pages |
| `AGENTS.md` | The brief above, plus instructions for an AI agent that can run things |
| `/` | **Run SQL**: a box for any SQL, the page the app opens on |
| `/queries` | **Queries**: every file in `queries/`, run fresh on each refresh |
| `/teams` | A page listing one season's teams |
