# AI Contributing Guide

**Project:** Space Engineers Engineering Handbook (SEEH)  
**Document ID:** SEEH-AI-001  
**Revision:** 0.1.0  
**Status:** Draft  
**Last Updated:** 2026-07-07

---

# 1. Purpose

This document defines how AI assistants may contribute to the Space Engineers Engineering Handbook (SEEH).

It exists to ensure AI-generated content is accurate, consistent, maintainable, and aligned with SEEH engineering standards.

---

# 2. Guiding Principle

> **AI may draft. Humans approve. Reality verifies.**

AI accelerates documentation.

Human review ensures engineering intent.

In-game testing determines correctness.

---

# 3. Source of Truth

The GitHub repository is the authoritative source for SEEH.

If AI instructions conflict with repository documents, the repository takes precedence.

Repository standards override AI project instructions.

---

# 4. AI Roles

| Role | Responsibility |
|---|---|
| ChatGPT | Systems architecture, standards, handbook structure, engineering design |
| Claude | Technical editing, clarity, Markdown quality, consistency |
| Perplexity | Research, citations, technical validation, current information |
| Human Project Lead | Final approval, prioritization, in-game testing, publication |

---

# 5. Contribution Rules

AI contributions should:

- Follow SEEH standards.
- Preserve document IDs.
- Use approved terminology.
- Explain engineering rationale.
- Separate verified information from assumptions.
- Include verification guidance where appropriate.
- Avoid unnecessary rewrites.

AI contributions should not:

- Invent undocumented mechanics.
- Present guesses as facts.
- Replace tested procedures with assumptions.
- Change engineering standards without discussion.
- Remove troubleshooting or verification sections.

---

# 6. Engineering Philosophy

Document engineering concepts before implementation details.

Whenever practical:

1. Explain the problem.
2. Explain the engineering solution.
3. Document the vanilla implementation.
4. Document optional implementation variants.
5. Explain verification and maintenance.

---

# 7. Mod Philosophy

SEEH is not tied to a single mod collection.

When mods are documented:

- Treat them as implementation variants.
- Identify required and optional dependencies.
- Document compatibility.
- Note known limitations.

---

# 8. Review Workflow

1. Draft
2. Editorial Review
3. Technical Validation
4. In-game Testing
5. Revision
6. Release

A document should not be marked **Released** until it has successfully completed the required review and testing.

---

# 9. Handling Uncertainty

If information cannot be verified:

- Mark it as **Experimental**.
- Identify what needs testing.
- Do not present assumptions as confirmed behavior.

---

# 10. Standards Compliance

All AI-generated documents should comply with:

- SEEH-000 — Project Charter
- SEEH-STD-001 — Documentation Style Guide
- SEEH-STD-002 — Naming Standard
- SEEH-STD-003 — Diagram & Blueprint Standard
- SEEH-STD-004 — Terminology
- SEEH-STD-005 — Testing & Verification Standard

---

# 11. Engineering Decision Records

When proposing a change that affects long-term standards, recommend creating an Engineering Decision Record (EDR).

An EDR should capture:

- Context
- Decision
- Alternatives
- Rationale
- Consequences

---

# 12. Quality Expectations

Every published engineering guide should include, where applicable:

- Purpose
- Scope
- Requirements
- Compatibility
- Engineering rationale
- Build procedure
- Configuration
- Verification
- Troubleshooting
- Maintenance
- Revision history

---

# 13. Repository Principles

The handbook should remain:

- Modular
- Version-controlled
- Beginner-friendly
- Technically accurate
- Maintainable
- Collaborative

---

# 14. Continuous Improvement

Standards are expected to evolve.

When improvements are identified:

- Update the relevant standard first.
- Then update dependent documents.
- Record significant architectural decisions through EDRs.

---

# 15. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
