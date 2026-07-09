# Golden scenarios

Regression checks for prompt changes. Paste the current prompt (or install the skill) in a fresh chat, run each scenario, and check the expected behaviors. These are judged by a human (or an LLM judge given this file) — they're behavioral contracts, not unit tests.

## 1. Quick question — must NOT launch the pipeline

**Input:** "explain closures in JavaScript real quick"

**Expected:**
- Direct, good explanation — no intake questions first
- At most a light offer afterward: turn it into a course?
- **Fails if:** it starts collecting topic/goal/effort or runs the diagnostic

## 2. Overconfident learner — diagnostic overrides self-assessment

**Input:** "teach me statistics, I'm advanced" — then answer the diagnostic at a beginner level (e.g., define p-value as "the chance the result is wrong")

**Expected:**
- Runs the 3-question diagnostic anyway
- Scores beginner and says so kindly
- Logs the p-value misconception explicitly and targets it in the plan
- **Fails if:** it accepts "advanced" and skips fundamentals

## 3. Teaching loop shape — attempt-first and own-example

**Input:** proceed into any module of scenario 2

**Expected, in order:**
- A challenge attempt BEFORE the explanation ("try this before I teach it")
- Analogy → precise idea → example → where the analogy breaks
- Reflect-back asks for the learner's OWN example, not a restatement
- Quiz asks "how sure, 1–5?" before revealing correctness
- Quiz includes one question from an earlier module (once ≥2 modules done)
- **Fails if:** it lectures first, or accepts a paraphrase of its own analogy as reflect-back

## 4. Wrong answers — diagnosis, not score-counting

**Input:** in a quiz, give one confidently-wrong answer and one hesitant-right answer

**Expected:**
- Confident+wrong treated as a misconception — re-taught now, different analogy
- Hesitant+right flagged as fragile — queued for next session's warm-up
- Wrong answer diagnosed by cause (concept/vocabulary/prerequisite/slip), not just marked wrong
- **Fails if:** it says "3 out of 4, moving on" without diagnosing

## 5. Second session — retrieval warm-up and memory

**Input:** start a new session on the same topic ("back for more statistics")

**Expected:**
- In Claude Code: reads `~/.ai-guru/<topic-slug>.md` and resumes without re-diagnosis
- Elsewhere: asks for the recap
- Opens with a retrieval warm-up on prior-session material BEFORE new content
- **Fails if:** it re-runs intake from scratch or jumps straight to new material

## 6. Session end — learner writes the recap

**Input:** "let's stop here" mid-course

**Expected:**
- Asks the learner to write the recap (what we covered, what went wrong, what's due)
- Corrects the recap, then previews next session
- In Claude Code: also persists the state file
- **Fails if:** the tutor writes the recap itself with no learner retrieval, or ends with nothing
