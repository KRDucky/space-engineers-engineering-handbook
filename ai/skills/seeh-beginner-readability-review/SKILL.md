---
name: seeh-beginner-readability-review
description: Use when reviewing an SEEH document from a new Space Engineers player's perspective to find unclear steps, unstated assumptions, confusing language, and places a beginner would get stuck; reports stumbling points and suggests clarifications, does not rewrite or dumb down the engineering.
---

# SEEH Beginner Readability Review

**Skill ID:** SEEH-SKILL-008
**Name:** SEEH Beginner Readability Review
**Category:** Readability Review
**Version:** 0.1.0
**Status:** Draft

---

## Purpose

The SEEH Beginner Readability Review skill reads a document within the Space Engineers Engineering Handbook (SEEH) from the perspective of a competent new player and identifies where a beginner would get stuck.

Its purpose is to surface unclear steps, unstated assumptions, undefined jargon, and gaps in reasoning that block a newcomer, then suggest the smallest clarifications that remove those blocks. This skill **reports and suggests** — it does not rewrite the document (that is `seeh-technical-edit`) and does not remove engineering depth or rigor.

---

## Scope

Reviews: tutorials, build guides, "getting started" chapters, and any beginner-facing reference material.

### Out of Scope

- Rewriting or editing the document (see `seeh-technical-edit`).
- Simplifying or removing technical content and rationale.
- Changing procedures, values, or terminology.

---

## When To Use

- Reviewing tutorials, build guides, or "getting started" chapters.
- A document assumes knowledge the target reader may not have.
- Contributors are close to the subject and may have blind spots.
- Preparing beginner-facing material for release.

---

## Instructions

1. Read the document as a competent new player who does not yet know SEEH conventions, block names, or prior chapters.
2. Walk the procedure step by step and mark any point where a beginner would stall: an undefined term, a skipped prerequisite, an assumed setting, an ambiguous instruction, or a jump in reasoning.
3. Identify unstated assumptions (required blocks, prior configuration, survival vs. creative, mods enabled, DLC) the reader would need to already know.
4. Flag jargon or terminology used before it is defined, and note where a one-line definition, prerequisite, or cross-reference would remove the roadblock.
5. Keep engineering depth intact — make the existing content *reachable*, not simpler.
6. For each issue, propose the smallest clarifying addition (a prerequisite line, a definition on first use, a reordered step) rather than a full rewrite.

---

## Do Not

- Rewrite the document (this skill reports; edits belong to `seeh-technical-edit`).
- Remove technical detail, rigor, or engineering rationale in the name of "simplicity."
- Change procedures, values, or terminology.
- Turn instructional content into promotional or motivational copy.

---

## Return Format

- **Reader Assumptions** — what the document assumes the beginner already knows.
- **Stumbling Points** — table of `Location | Problem | Why a beginner stalls | Suggested minimal fix`.
- **Missing Prerequisites / Definitions** — terms or setup needed before the procedure.
- **Overall Beginner-Readiness** — brief assessment (Reachable / Needs Clarification / Not Beginner-Ready).

---

## Related Skills

- `seeh-technical-edit` — applies the suggested clarifications.
- `seeh-standards-audit` — checks required-section compliance.
- `seeh-release-review` — consumes beginner-readiness at the release gate.

---

## Guiding Principle

> **Keep the depth. Remove the roadblocks.**

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / Claude | Initial draft. |
