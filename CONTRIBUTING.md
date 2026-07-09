# Contributing

Thanks for wanting to improve ai-guru.

## Ground rules

- **Canonical source**: `skills/ai-guru/SKILL.md` and `skills/ai-guru/references/` are the source of truth. `guru-prompt.md` is the hand-synced portable version — if your change touches the teaching method, update both.
- **License**: contributions are accepted under [PolyForm Noncommercial 1.0.0](LICENSE). By opening a PR you agree your contribution is licensed the same way.
- **Keep the portable prompt portable**: `guru-prompt.md` must work in any AI chat — no tool calls, no file access, no Claude-specific features.
- **Pedagogy changes need a reason**: if you change the teaching loop, say what learning-science principle motivates it (retrieval practice, generation effect, interleaving, etc.) in the PR description.

## Checking your change

Run the scenarios in [`evals/scenarios.md`](evals/scenarios.md) against the updated prompt — paste the prompt into a fresh chat and walk each scenario. A change that breaks an expected behavior needs to either fix the scenario or justify the new behavior.

## Releasing (maintainers)

1. Bump `version` in `.claude-plugin/plugin.json`
2. Tag `vX.Y.Z` and push — the release workflow validates the manifests, builds `dist/ai-guru.skill`, and attaches it to the GitHub release
