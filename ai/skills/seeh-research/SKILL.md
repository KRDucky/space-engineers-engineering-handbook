---
name: seeh-research
description: Use when gathering sourced, confidence-rated evidence on Space Engineers mechanics, mods, APIs, or engineering concepts to inform SEEH decisions; produces findings, not handbook chapters.
---

# SEEH Research Skill

**Skill ID:** SEEH-SKILL-001
**Name:** SEEH Research
**Category:** Research
**Version:** 0.2.0
**Status:** Draft

---

## Purpose

The SEEH Research Skill provides authoritative technical research in support of the Space Engineers Engineering Handbook (SEEH). It answers engineering questions using reliable, current sources while preserving SEEH engineering standards.

It gathers evidence so handbook authors can make informed engineering decisions. It **does not** write handbook chapters and **does not** render final mod support-level decisions (that is the role of seeh-mod-review).

---

## Scope

This skill researches and summarizes:

- Space Engineers mechanics
- Official game documentation
- Patch notes
- Steam Workshop mods
- GitHub repositories
- API documentation
- Community best practices
- Engineering concepts
- Compatibility issues
- Known bugs
- Breaking changes

### Out of Scope

- Authoring or rewriting handbook chapters (see seeh-document-review).
- Assigning a mod's final SEEH support level (see seeh-mod-review).
- Verifying a specific published claim as true or false (see seeh-fact-check).
- Inventing or changing SEEH standards.

---

## When To Use

Use this skill when:

- Researching a new handbook chapter.
- Evaluating a Workshop mod at the evidence-gathering stage.
- Comparing multiple mods.
- Checking current game mechanics.
- Looking for official documentation.
- Verifying automation syntax.
- Investigating reported issues.
- Reviewing engineering assumptions.

---

## Inputs

Typical inputs include:

- Engineering question or topic
- Steam Workshop URL
- GitHub repository
- Mod name or Mod ID
- Game version
- Automation syntax or script to research
- Existing handbook chapter needing supporting evidence

---

## Research Workflow

1. Understand the engineering question.
2. Search authoritative sources.
3. Compare multiple sources.
4. Identify conflicting information.
5. Determine confidence level.
6. Summarize findings.
7. Recommend additional in-game testing if required.

---

## Research Principles

Always:

- Prefer primary sources.
- Cite sources.
- Separate facts from opinions.
- Identify uncertainty.
- Explain engineering implications.
- Preserve SEEH terminology.

Never:

- Guess.
- Invent undocumented mechanics.
- Hide conflicting evidence.
- Rewrite handbook chapters.
- Change SEEH standards.

---

## Research Checklists

### Engineering Topic

When researching an engineering topic, determine:

- Is the mechanic officially documented?
- Has it changed recently?
- Are there edge cases?
- Does it behave differently in multiplayer?
- Does it differ between vanilla and modded gameplay?
- Does SEEH need implementation variants?

### Mod (Preliminary Scan)

When a mod is in scope, gather enough evidence for seeh-mod-review to make the support-level decision. Do not assign the support level here.

- Purpose and author
- Dependencies
- Current maintenance status and last update
- Multiplayer compatibility
- Survival suitability
- Performance impact
- Known issues
- Alternatives

For a full evaluation and recommendation, hand off to **seeh-mod-review**.

---

## Confidence Scale

Assign one confidence level and always explain it. This scale is shared with seeh-fact-check and must remain identical to it.

| Level | Meaning |
|-------|---------|
| A | Verified by official documentation or repeatable in-game testing |
| B | Verified by official mod documentation or the mod maintainer |
| C | Supported by Steam Workshop documentation |
| D | Supported primarily by community consensus |
| E | Experimental, anecdotal, or insufficient evidence |

---

## Source Priority

Use the following priority. Lower-priority sources must never override higher-priority evidence without explanation. This ladder is shared with seeh-fact-check and must remain identical to it.

1. In-game testing (repeatable, observed)
2. Official Keen Software House documentation
3. Official GitHub repositories
4. Official mod documentation or maintainer statements
5. Steam Workshop pages
6. Community documentation
7. Reddit, Discord, forums, YouTube (last resort)

---

## Output Format

Research responses should contain the following sections where applicable. This is the single canonical output template for this skill.

- **Summary** — a concise overview.
- **Current Status** — one of: Stable, Active Development, Experimental, Deprecated, Unknown.
- **Game Version** — the applicable Space Engineers version, if known.
- **Mod Version** — the version or latest known release, if applicable.
- **Engineering Analysis** — findings and their engineering implications.
- **Known Limitations** — edge cases, constraints, unknowns.
- **Compatibility** — dependencies, multiplayer, survival, and performance considerations.
- **Source Confidence** — the assigned confidence level (A–E) with an explanation.
- **References** — all authoritative sources used, in priority order.
- **Recommendations** — next steps, including any in-game testing required.

---

## Standards & Related Skills

Supports:

- SEEH-000 Project Charter
- SEEH-STD-001 Documentation Style Guide
- SEEH-STD-004 Terminology
- SEEH-STD-005 Testing & Verification Standard
- Engineering Decision Records (EDRs)

Related skills:

- **seeh-mod-review** — receives the mod evidence gathered here and assigns the support level.
- **seeh-fact-check** — verifies specific claims that research surfaces.

Research informs engineering decisions. Research does not replace engineering testing.

---

## Quality Checklist

Before completing the research:

- [ ] Engineering question understood
- [ ] Authoritative sources searched
- [ ] Multiple sources compared
- [ ] Conflicts identified
- [ ] Confidence level assigned and explained
- [ ] Engineering implications stated
- [ ] Testing recommended where needed

---

## Guiding Principle

> **Research thoroughly. Cite carefully. Test everything.**

---

## Success Criteria

Successful research:

- Answers the engineering question with cited evidence.
- Separates verified fact from opinion and uncertainty.
- Assigns and explains a confidence level.
- Surfaces conflicts rather than hiding them.
- Recommends testing when evidence is insufficient.

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.2.0 | 2026-07-07 | Ian Comings / Claude | Technical-editor pass: fixed heading hierarchy; added Scope, Inputs, Category, Success Criteria; merged output into a single template; harmonized confidence/source scales with seeh-fact-check; added scope boundary and related-skill handoffs. |
