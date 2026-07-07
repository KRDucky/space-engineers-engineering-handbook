# SEEH AI Context — Project Charter

**Document ID:** SEEH-AI-CTX-003  
**Version:** 0.1.1  
**Status:** Draft  
**Last Updated:** 2026-07-07

---

# 1. Purpose

This document provides condensed project-charter context for AI assistants contributing to the Space Engineers Engineering Handbook (SEEH).

It summarizes the project's mission, philosophy, scope, workflow, and quality expectations so AI assistants can produce work aligned with the repository standards.

This file does not replace `SEEH-000 — Project Charter`.

The repository charter remains the authoritative source.

---

# 2. Project Name

**Space Engineers Engineering Handbook**

Common abbreviation:

```text
SEEH
```

---

# 3. Mission

SEEH exists to create professional, beginner-friendly, tested engineering documentation for Space Engineers.

The handbook teaches players how to:

- Design systems
- Build systems
- Automate systems
- Operate systems
- Troubleshoot systems
- Maintain systems
- Improve systems

The handbook should explain **why** a design works, not only **how** to copy it.

---

# 4. Project Motto

> **Build with purpose. Document with precision. Share with everyone.**

---

# 5. Core Philosophy

SEEH is not a random collection of tutorials.

SEEH is an engineering documentation framework.

Every document should help establish repeatable standards that can be used by:

- Solo players
- Multiplayer groups
- Server communities
- Blueprint designers
- Automation builders
- Survival engineers

The goal is to create systems that are understandable, maintainable, testable, and reproducible.

---

# 6. Audience

Assume the reader may be:

- New to Space Engineers automation
- New to technical documentation
- Building in survival mode
- Playing with friends on a server
- Maintaining someone else's build
- Reading on a phone, tablet, or second monitor

Do not assume expert knowledge.

Explain required concepts before using them.

---

# 7. Documentation Goals

SEEH documentation should be:

- Clear
- Accurate
- Maintainable
- Beginner-friendly
- Technically useful
- Multiplayer-aware
- Compatible with Markdown
- Suitable for GitHub
- Suitable for offline reading

---

# 8. Engineering Scope

SEEH may document:

- Atmospheric systems
- Airlocks
- Oxygen systems
- Hydrogen systems
- Power systems
- Material handling
- Mining and processing
- Base design
- Ship design
- Station design
- Defense systems
- Docking systems
- Industrial systems
- Control systems
- Automation
- LCD monitoring
- Multiplayer engineering standards
- Fleet standards

---

# 9. Out of Scope

SEEH should not become:

- A modpack requirement
- A roleplay lore bible
- A collection of untested blueprints
- A list of personal preferences without rationale
- A replacement for official documentation
- A source of undocumented claims presented as fact

---

# 10. Engineering Principles

When creating or reviewing SEEH content, follow these principles:

1. Define the engineering problem first.
2. Explain why the selected design solves the problem.
3. Prefer reliable systems over clever systems.
4. Prefer maintainable systems over compact but confusing systems.
5. Provide vanilla implementations where practical.
6. Provide modded variants only when they add clear value.
7. Document assumptions.
8. Document limitations.
9. Include verification steps.
10. Include troubleshooting guidance.

---

# 11. Implementation Philosophy

Engineering concepts come first.

Implementation details come second.

When multiple approaches exist, organize them as variants:

- Level 0 — Vanilla
- Level 1 — Quality of Life
- Level 2 — Engineering
- Level 3 — Enhanced Engineering
- Level 4 — Server Edition

Higher levels should extend lower-level concepts rather than invalidate them.

For full descriptions, objectives, and recommended mods for each level, see `SEEH-AI-CTX-002 — Implementation Levels`.

---

# 12. Mod Philosophy

SEEH is mod-aware but not mod-dependent.

Mods may be documented as optional implementation variants.

A mod is a good SEEH candidate when it:

- Adds engineering capability
- Improves maintainability
- Supports monitoring or automation
- Enables better infrastructure
- Works reliably in multiplayer
- Has adequate documentation

Avoid making mods mandatory unless a document specifically targets a higher implementation level.

---

# 13. AI Collaboration Model

| AI / Contributor | SEEH Role (see `SEEH-AI-CTX-001`) | Responsibility |
|---|---|---|
| ChatGPT | Systems Architect | Systems architecture, standards, design integration |
| Claude | Technical Editor | Technical editing, clarity, consistency |
| Perplexity | Research Engineer | Research, citations, technical validation |
| Human Project Lead | — | Final approval, in-game testing, publication |

The Human Project Lead is included in this table because all AI-generated material requires human approval before inclusion in the handbook (see Section 14).

AI-generated material is not automatically authoritative.

---

# 14. AI Contribution Rule

> **AI may draft. Humans approve. Reality verifies.**

This means:

- AI may help write, organize, review, and research.
- Humans decide what belongs in the handbook.
- Space Engineers itself verifies whether engineering designs actually work.

---

# 15. Quality Expectations

Every major engineering guide should include, where applicable:

- Purpose
- Scope
- Requirements
- Compatibility
- Engineering rationale
- Bill of materials
- Build procedure
- Configuration
- Diagrams
- Verification
- Troubleshooting
- Maintenance
- Expansion options
- Revision history

---

# 16. Evidence Expectations

When technical claims are made, identify whether they are:

- Verified
- Confirmed
- Unverified
- Community Consensus
- Experimental
- Deprecated

See `SEEH-AI-CTX-001 — Terminology`, Verification Vocabulary, for the definition of each evidence state.

Do not present assumptions as verified facts.

If evidence is incomplete, say so.

---

# 17. Engineering Decision Records

Significant long-term design decisions should be captured in Engineering Decision Records (EDRs).

Use EDRs when decisions affect:

- Naming
- Folder structure
- Documentation standards
- Implementation levels
- Mod support
- System architecture
- Blueprint philosophy

---

# 18. Repository Authority

The GitHub repository is the source of truth.

AI context files exist to help assistants follow the project.

If an AI context file conflicts with a repository standard, follow the repository standard and flag the conflict.

---

# 19. Desired Tone

SEEH should sound like:

- A technical handbook
- An engineering manual
- A practical field guide
- A maintainable open-source documentation project

SEEH should not sound like:

- A casual forum post
- A meme guide
- A sales pitch
- A random mod list
- A speculative design blog

---

# 20. Guiding Principle

> Good engineering documentation should allow someone else to understand, build, verify, repair, and improve the system after the original builder is gone.

---

# 21. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial AI context draft. |
| 0.1.1 | 2026-07-07 | Claude / Technical Editor | Added SEEH Role mapping to AI Collaboration Model table; added clarifying note on Human Project Lead's inclusion; standardized "Community Consensus" capitalization; added cross-references to SEEH-AI-CTX-002 and SEEH-AI-CTX-001. |