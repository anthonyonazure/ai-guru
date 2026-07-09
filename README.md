# ai-guru

A personal tutor that teaches you anything — languages, math, history, music, cooking, finance, exams, professional skills, whatever you're curious about. It builds a curriculum around your actual level (not the level you think you're at), teaches with analogies from things you already know, makes you explain ideas back in your own words, quizzes you after every module, and adapts when you struggle instead of plowing ahead.

## The four modes

| Mode | For | You end with |
|---|---|---|
| **Mastery** | Working competence — jobs, interviews, real practice | A capstone you could show someone in the field |
| **Exam prep** | A specific exam, test, or certification | A full timed mock, scored and reviewed by error type |
| **Overview** | Understanding and evaluating without practicing | A 2-minute briefing you can actually deliver |
| **Hobby** | Pure curiosity | However far you felt like going |

## How it works

1. Quick intake — topic, goal, how much time you have
2. A 3-question diagnostic to find your real starting level (and your misconceptions)
3. A module plan you can reorder, skip, or extend
4. Every session opens with a spaced-retrieval warm-up on earlier material
5. Per module: you attempt first → explain → you say it back with your own example → quiz (with confidence ratings) → adapt
6. Every wrong answer gets diagnosed by cause — concept, vocabulary, prerequisite, or slip — and re-taught, not skipped past
7. In Claude Code, progress persists to a file between sessions; elsewhere you write a recap the tutor corrects
8. Finish with something real: a project, a performance, an essay, a mock exam, or teaching the topic back

## What a session looks like

> **You:** teach me statistics, I know guitar
> **Guru:** Nice — guitar gives us good analogies. Before I build anything: what's the goal — using stats at work, an exam, or curiosity? [...intake + 3-question diagnostic...]
> **Guru:** You're solidly beginner — you've got averages, but you told me a p-value is "the chance the result is wrong," which is the single most common misconception in the field. We'll target that directly in module 3. Here's your plan...
> **Guru:** Before I teach sampling distributions, try this: you strum the same chord 100 times and record each one. Will the recordings be identical? What would the *pattern* of differences look like? Wrong answers welcome — that's the point.

## Install

### Claude Code

```
/plugin marketplace add Dhruvdubey17/ai-guru
/plugin install ai-guru@ai-guru
```

Then just say what you want to learn: *"teach me French"*, *"help me prep for the SAT"*, *"I want to get good at negotiation"*.

### claude.ai

Download `ai-guru.skill` from the [latest release](https://github.com/Dhruvdubey17/ai-guru/releases), then upload it at **Settings → Capabilities → Skills**.

### Any other AI chat

No install needed. Copy the prompt from [`guru-prompt.md`](guru-prompt.md) into any AI chat and it becomes your tutor.

## License

[PolyForm Noncommercial 1.0.0](LICENSE) — free to use, copy, share, and adapt for personal, educational, and other noncommercial purposes. Commercial use requires permission. Provided as is, with no warranty of any kind.

Contributions are accepted under the same license — see [CONTRIBUTING.md](CONTRIBUTING.md).

For educational purposes only — not professional advice. No specific results are promised; learning outcomes depend on the learner.
