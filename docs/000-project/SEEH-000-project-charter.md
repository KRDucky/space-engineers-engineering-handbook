# SEEH-000 — Project Charter

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-000  
**Revision:** 0.2.3  
**Status:** Released  
**Last Updated:** 2026-07-07  

---

## 1. Purpose

The **Space Engineers Engineering Handbook (SEEH)** exists to create clear, reliable, beginner-friendly engineering documentation for *Space Engineers*.

SEEH is intended to help players design, build, automate, test, maintain, and troubleshoot ships, stations, planetary bases, industrial facilities, and supporting infrastructure using repeatable engineering standards.

The project is not only a collection of build guides. It is an engineering documentation framework for creating systems that are understandable, maintainable, testable, and reproducible.

---

## 2. Mission Statement

SEEH exists to produce professional engineering documentation for *Space Engineers* by creating accurate, tested, beginner-friendly, and community-maintained standards for construction, automation, operation, maintenance, and troubleshooting.

The handbook should teach players how to understand systems, not only how to copy them.

Every major design should explain:

1. What problem is being solved.
2. Why the design was chosen.
3. How the design can be reproduced.
4. How the design can be verified.
5. How the design can be maintained or improved.

---

## 3. Project Motto

> **Build with purpose. Document with precision. Share with everyone.**

---

## 4. Vision

SEEH aims to become a common engineering language for the *Space Engineers* community.

When a ship, station, or base follows SEEH standards, another player should be able to understand:

- How systems are named.
- How systems are documented.
- How automation is organized.
- How variants are identified.
- How systems are tested.
- How maintenance is performed.
- How troubleshooting is approached.

The long-term goal is to make collaboration easier for solo players, multiplayer groups, and community servers.

---

## 5. Audience

SEEH documentation is written for a wide range of readers.

Assume the reader may be:

- New to *Space Engineers* automation.
- New to technical documentation.
- Building in survival mode.
- Playing with friends on a server.
- Maintaining a system built by someone else.
- Reading the guide on a phone, tablet, or second monitor.

Do not assume expert knowledge.

Beginner-friendly documentation should remain technically accurate. The goal is to explain engineering concepts clearly, not to remove engineering depth.

---

## 6. Scope

SEEH may document:

- Atmospheric systems
- Airlocks
- Oxygen systems
- Hydrogen systems
- Power systems
- Material handling
- Mining and processing
- Industrial systems
- Defense systems
- Docking systems
- Base design
- Ship design
- Station design
- Fleet engineering standards
- Automation and control systems
- LCD monitoring
- Multiplayer engineering practices
- Maintenance procedures
- Troubleshooting methods
- Engineering Decision Records

Additional topics may be added as the project evolves.

---

## 7. Out of Scope

SEEH is not intended to become:

- A random collection of untested blueprints.
- A roleplay lore guide.
- A mandatory modpack.
- A list of personal preferences without engineering rationale.
- A replacement for official documentation.
- A source of undocumented claims presented as fact.
- A collection of exploits or unstable behavior.

SEEH may document mods, scripts, or optional tools, but the handbook itself should not require one fixed mod collection unless a specific document explicitly targets a higher implementation level.

---

## 8. Core Principles

All SEEH documentation should follow these principles.

### 8.1 Engineering First

Every design should solve a defined engineering problem.

A guide should explain why the system exists before explaining how to build it.

### 8.2 Beginner-Friendly, Not Shallow

No prior automation knowledge should be assumed.

If a step matters, document it.

If a term may be unfamiliar, define it.

### 8.3 Explain Why

Every major engineering recommendation should include rationale.

Do not write only:

> Place the Air Vent here.

Instead, explain why that location was selected.

### 8.4 Reliability Over Cleverness

Prefer systems that are understandable, maintainable, and repairable.

A compact or clever system is not automatically better if it becomes difficult to troubleshoot.

### 8.5 Testable Procedures

Every procedure should include verification steps.

A reader should know what correct behavior looks like before moving on.

### 8.6 Mod-Neutral Concepts

Engineering concepts should be documented independently of specific mods whenever practical.

Mods should be treated as implementation variants unless the document is specifically about a given mod.

### 8.7 Maintainability

A good system should be serviceable by someone who did not originally build it.

Documentation should support future repair, expansion, and review.

---

## 9. Implementation Levels

SEEH uses implementation levels to describe the assumptions required by a design.

| Level | Name | Description |
|---|---|---|
| Level 0 | Vanilla | No mods or scripts required. |
| Level 1 | Quality of Life | Build and inspection aids only, such as BuildInfo or Build Vision. |
| Level 2 | Engineering | Adds engineering capability, such as Easy Automation 2 or Automatic LCDs 2. |
| Level 3 | Enhanced Engineering | Adds infrastructure or industrial depth. |
| Level 4 | Server Edition | Designed for multiplayer servers, NPC threats, and larger-scale operations. |

Higher levels should extend lower-level concepts rather than replace them.

Whenever practical, a document should explain the engineering concept first, then present implementation variants.

---

## 10. Documentation Quality Levels

SEEH uses quality levels to communicate how mature a design or document is.

| Level | Name | Meaning |
|---|---|---|
| Bronze | Written | The document exists and is internally complete. |
| Silver | Built | The design has been built in-game. |
| Gold | Multiplayer Tested | The design has been tested with multiple players. |
| Platinum | Community Verified | The design has been verified by multiple independent users or servers. |

Quality levels describe confidence in the documented design.

They do not replace document status values such as Draft, Review, Released, Deprecated, or Archived.

"Deprecated" here refers to the lifecycle status of a *document*. Section 11 uses "Deprecated" to describe the reliability of a *technical claim*. These are related but distinct uses of the same term.

For the canonical terminology entry, see `SEEH-AI-CTX-001 — Terminology`, Quality Levels.

---

## 11. Evidence Expectations

Technical claims should be clearly identified when their reliability matters.

Use these evidence states where appropriate:

| Evidence State | Meaning |
|---|---|
| Verified | Supported by authoritative documentation or repeatable testing. |
| Confirmed | Observed during testing but not yet independently verified. |
| Community Consensus | Supported by multiple community sources but lacking authoritative documentation. |
| Unverified | Requires additional evidence. |
| Experimental | Behavior may change or is insufficiently understood. |
| Deprecated | Previously accurate but superseded by a game update, mod change, or improved design. |

Do not present assumptions as verified facts.

If evidence is incomplete, state what still needs to be tested.

This use of "Deprecated" describes the reliability of a technical claim. It is distinct from the document-status use of "Deprecated" defined in Section 10.

---

## 12. Repository Philosophy

The repository is both a handbook and an engineering framework.

It should contain:

- Standards
- Build guides
- Diagrams
- Templates
- Engineering Decision Records
- Testing procedures
- Reference material
- Optional mod-specific variants
- AI role definitions and review procedures
- Historical archives for deprecated designs

The GitHub repository is the source of truth.

External AI project settings, uploaded files, and assistant memory may support the work, but they do not replace the repository.

---

## 13. Engineering Decision Records

Significant long-term decisions should be documented using Engineering Decision Records (EDRs).

Use an EDR when a decision affects:

- Naming conventions
- Folder structure
- Documentation standards
- Implementation levels
- Mod support
- System architecture
- Blueprint philosophy
- Testing requirements
- Long-term compatibility

An EDR should capture:

- Context
- Decision
- Alternatives considered
- Rationale
- Consequences
- Related documents

Revisions to this charter (SEEH-000) are documented through the Revision History (Section 20) rather than through a separate EDR, unless a specific revision introduces a new binding standard that requires independent traceability outside this document.

---

## 14. AI Collaboration Model

SEEH may use AI assistants to support drafting, editing, research, and review.

| Contributor | Role | Responsibility |
|---|---|---|
| ChatGPT | Systems Architect | Architecture, standards, system design, and document integration. |
| Claude | Technical Editor | Clarity, consistency, readability, and documentation review. |
| Perplexity | Research Engineer | Research, citations, mod validation, and technical verification. |
| Human Project Lead | Final Authority | Approval, prioritization, in-game testing, and publication decisions. |

AI-generated material is not automatically authoritative.

The governing rule is:

> **AI may draft. Humans approve. Reality verifies.**

This means:

- AI may assist with writing, organizing, reviewing, and researching.
- Humans decide what belongs in the handbook.
- *Space Engineers* itself verifies whether engineering designs actually work.

---

## 15. Documentation Expectations

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

Documents should be written in Markdown and should remain readable on GitHub, tablets, phones, and offline viewers.

---

## 16. Release Philosophy

A document should not be marked **Released** until it has been reviewed and verified to the level required by its purpose.

A released engineering guide should have:

- Complete instructions
- Clear assumptions
- Defined compatibility
- Required diagrams where appropriate
- Verification steps
- Troubleshooting guidance
- Known limitations
- Revision history

For design documents, in-game testing is required before release.

For standards documents, review and internal consistency are required before release.

---

## 17. Community Contribution Philosophy

SEEH is intended to be a community-maintained project.

Contributors are encouraged to:

- Improve documentation.
- Test procedures.
- Report inaccuracies.
- Propose engineering standards.
- Submit diagrams.
- Review build guides.
- Document multiplayer behavior.
- Identify deprecated guidance.

Contributions should preserve the professional engineering-manual tone and should align with SEEH standards.

---

## 18. Success Criteria

SEEH succeeds when:

- New players can build reliable systems by following the handbook.
- Experienced players can adapt SEEH systems to larger designs.
- Multiplayer groups can use SEEH as a shared engineering standard.
- Contributors can expand the handbook without reducing consistency.
- Engineering decisions remain understandable after the original builder is gone.
- Designs can be tested, maintained, repaired, and improved by others.

---

## 19. Guiding Principle

> Good engineering documentation should allow someone else to understand, build, verify, repair, and improve the system after the original builder is gone.

---

## 20. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.2.0 | 2026-07-07 | Ian Comings / ChatGPT | Expanded charter into a full project governance draft; added vision, audience, evidence expectations, EDRs, AI collaboration model, release philosophy, and success criteria. |
| 0.2.1 | 2026-07-07 | Claude / Technical Editor | Copy-edit pass: resolved pronoun ambiguity in §8.6 ("that mod" → "a given mod"). No engineering content, terminology, or structure changed. |
| 0.2.2 | 2026-07-07 | Claude / Technical Editor | Standards-audit fixes: disambiguated "Deprecated" between document-status (§10) and evidence-state (§11) uses; added EDR-exemption clause for charter self-revisions (§13); blockquoted Guiding Principle (§19) for consistency with §3 and §14. |
| 0.2.3 | 2026-07-07 | Claude / Technical Editor | Standardized all pipe-table formatting (§9, §10, §11, §14, §20) to tight single-space padding, matching the convention established in SEEH-AI-CTX-001 — Terminology. No table content, wording, or structure changed. |
| [next version] | 2026-07-07 | [Human Project Lead name] | Approved for release following editorial and standards-consistency review (seeh-technical-edit, seeh-standards-audit, seeh-release-review). Status changed from Draft to Released. |