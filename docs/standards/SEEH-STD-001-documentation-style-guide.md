# SEEH-STD-001 — Documentation Style Guide

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-STD-001  
**Revision:** 0.3.1  
**Status:** Released  
**Last Updated:** 2026-07-07  

---

## 1. Purpose

This standard defines how Space Engineers Engineering Handbook (SEEH) documentation is written, structured, formatted, reviewed, and prepared for release.

The goal is consistency.

A reader should not need to relearn document structure, terminology, formatting, or review expectations every time they open a new SEEH document.

This standard supports:

- Clear engineering communication
- Beginner-friendly documentation
- Consistent Markdown formatting
- Repeatable review workflows
- Long-term maintainability
- Reliable release preparation

---

## 2. Scope

This standard applies to all SEEH documentation, including:

- Project documents
- Standards
- Build guides
- Engineering guides
- Tutorials
- References
- Templates
- Engineering Decision Records
- Blueprint documentation
- AI context files, when applicable

Some document types may require additional standards.

For example:

- Naming requirements are governed by `SEEH-STD-002`.
- Diagram and blueprint formatting is governed by `SEEH-STD-003`.
- Terminology is governed by `SEEH-STD-004`.
- Testing and verification requirements are governed by `SEEH-STD-005`.

When another standard provides a more specific rule, follow the more specific standard.

---

## 3. Authority

`SEEH-STD-001` is the primary documentation style standard for SEEH.

It does not replace the project charter.

The project charter (`SEEH-000`) defines the mission, scope, philosophy, and governance of SEEH.

This standard defines how documents should be written and formatted to support that mission.

---

## 4. Writing Principles

SEEH documentation should be:

- Clear
- Direct
- Accurate
- Beginner-friendly
- Technically precise
- Maintainable
- Testable where applicable
- Consistent across the handbook

Prefer practical engineering language over casual language.

Do not write like a forum post, sales pitch, mod list, or personal build diary.

---

## 5. Audience Assumptions

Assume the reader may be:

- New to Space Engineers automation
- New to technical documentation
- Building in survival mode
- Playing with friends on a server
- Following the document on a tablet, phone, or second monitor
- Maintaining a build created by someone else

Do not assume expert knowledge.

If a concept matters, explain it before relying on it.

If a step matters, document it.

If a result should be visible, tell the reader what they should see.

---

## 6. Voice and Tone

Use a professional engineering-manual tone.

Preferred tone:

- Direct
- Calm
- Practical
- Neutral
- Instructional
- Precise

Avoid:

- Hype
- Jokes that interrupt instruction
- Overly casual phrasing
- Unexplained slang
- Marketing language
- Personal preference presented as fact

Correct:

```text
Configure the Air Vent to depressurize before opening the exterior door.
```

Avoid:

```text
Just slap down a vent and open the outside door.
```

---

## 7. Plain Language Requirements

Use plain English whenever possible.

Prefer short, direct sentences.

Avoid filler words such as:

- just
- simply
- obviously
- easy
- basically

These words often hide assumptions.

Avoid:

```text
Simply connect the timers and it should work.
```

Correct:

```text
Connect Timer Block A to the interior door and Timer Block B to the exterior door. Then run the verification steps in Section 8.
```

---

## 8. Terminology

Use approved SEEH terminology consistently.

Terminology is governed by `SEEH-STD-004`.

When writing public handbook text:

- Use **Air Vent**, not "oxygen vent."
- Use **Event Controller**, not "event block."
- Use **Timer Block**, not "timer."
- Use **Interior Light**, not "light."
- Use **Programmable Block** in prose.
- Use mod names exactly as published on first mention.

Abbreviations may be used only after the full term has been introduced, unless the abbreviation is already part of an official name.

Example:

```text
Use a Programmable Block for scripted automation. The abbreviation "PB" may appear in code blocks, script comments, or space-constrained tables, but avoid it in explanatory prose.
```

### Evidence Expectations for Technical Claims

When a document makes a technical claim about game mechanics, mod behavior, or engineering results, identify its reliability using the Verification Vocabulary defined in `SEEH-STD-004`: Verified, Confirmed, Community Consensus, Unverified, Experimental, or Deprecated.

Do not present an assumption as a verified fact.

If evidence is incomplete, say so directly rather than implying certainty.

---

## 9. Document Header Format

Every SEEH document should begin with a title and metadata block.

Use this format:

```markdown
# SEEH-XXX-000 — Document Title

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-XXX-000  
**Revision:** 0.1.0  
**Status:** Draft  
**Last Updated:** YYYY-MM-DD  
```

The metadata block should include:

| Field        | Required | Purpose                                     |
| ------------ | --------:| ------------------------------------------- |
| Project      | Yes      | Identifies the project.                     |
| Document ID  | Yes      | Provides the canonical document identifier. |
| Revision     | Yes      | Tracks document version.                    |
| Status       | Yes      | Shows document lifecycle state.             |
| Last Updated | Yes      | Shows the latest revision date.             |

Additional fields may be added when useful.

Examples:

- Implementation Level
- Applies To
- Required Mods
- Related Documents
- Supersedes
- Superseded By

> **Note**
>
> The **Revision** field above and the **Version** column in the Revision History table (Section 34) refer to the same underlying value. The header shows the document's current revision; the table shows its full history. Use the same value in both places — the differing field names reflect their different context (a single current state versus a historical log), not two different quantities.

---

## 10. Document Status Values

Use approved status values consistently.

| Status       | Meaning                                                   |
| ------------ | --------------------------------------------------------- |
| Draft        | Initial work. Not ready for general use.                  |
| Review       | Under editorial, standards, technical, or release review. |
| Experimental | Requires additional testing or validation.                |
| Verified     | Successfully tested in-game where applicable.             |
| Released     | Approved for general use.                                 |
| Deprecated   | Superseded by newer guidance.                             |
| Archived     | Retained for historical reference.                        |

Do not mark an engineering design **Released** unless it has met the release requirements defined by the appropriate standards.

---

## 11. Revision Numbering

Use semantic-style revision numbers.

Preferred format:

```text
MAJOR.MINOR.PATCH
```

General guidance:

| Change Type | Example | Use When                                                         |
| ----------- | ------- | ---------------------------------------------------------------- |
| Patch       | 0.1.1   | Editorial fixes, formatting fixes, small clarifications.         |
| Minor       | 0.2.0   | New sections, expanded guidance, non-breaking structure changes. |
| Major       | 1.0.0   | First stable release or major standard change.                   |

Before the project reaches a stable release, documents may use `0.x.x` revisions.

A document may be marked **Released** before reaching `1.0.0` if the project lead approves it, but stable public standards should eventually move toward `1.0.0`.

---

## 12. Standard Document Structure

Engineering documents should use this structure when applicable:

1. Purpose
2. Scope
3. Requirements
4. Compatibility
5. Engineering Rationale
6. Bill of Materials
7. Build Procedure
8. Configuration
9. Diagrams
10. Verification
11. Troubleshooting
12. Maintenance
13. Expansion Options
14. Revision History

Not every document requires every section.

However, omitted sections should be intentional.

For example, a terminology reference may not need a build procedure, but an airlock build guide should include requirements, configuration, verification, troubleshooting, and maintenance.

---

## 13. Section Numbering

Use numbered sections for standards, project documents, long references, and formal engineering documents.

Example:

```markdown
## 1. Purpose
## 2. Scope
## 3. Requirements
```

Use unnumbered subsections when they improve readability inside a numbered section.

Example:

```markdown
## 8. Core Principles

### Engineering First

### Reliability Over Cleverness
```

Avoid deeply nested headings.

If a document requires more than four heading levels, consider reorganizing the content.

---

## 14. Headings

Use Markdown headings in order.

```markdown
# Document Title
## Major Section
### Subsection
#### Procedure or Detail
```

Rules:

- Use one H1 title per document.
- Do not skip heading levels.
- Keep headings short.
- Prefer descriptive headings over clever headings.
- Use title case for major document titles.
- Use sentence-style or title-style headings consistently within a document.

Correct:

```markdown
## 6. Build Procedure
### 6.1 Install the Air Vent
```

Avoid:

```markdown
#### Install the Air Vent
# Random Notes
```

---

## 15. Lists

Use numbered lists when order matters.

Use bullet lists when order does not matter.

Correct ordered procedure:

```markdown
1. Place the Air Vent.
2. Rename the Air Vent.
3. Add the Air Vent to the correct block group.
4. Verify the Air Vent responds to the control sequence.
```

Correct unordered list:

```markdown
Required blocks:

- Air Vent
- Interior Light
- Button Panel
- Timer Block
```

Do not use long bullet lists as a substitute for a procedure.

If the reader must perform steps in sequence, use a numbered list.

---

## 16. Tables

Use tables for structured information, including:

- Configuration values
- Compatibility data
- Bill of materials
- Naming examples
- Comparison data
- Test results

Example:

| Property   | Value                  |
| ---------- | ---------------------- |
| Block Name | `AL_A01_Vent`          |
| Group      | `GRP_AL_A01_All`       |
| Function   | Airlock pressurization |

Keep tables readable in raw Markdown.

Avoid very wide tables when a list or subsection would be easier to read.

---

## 17. Code Blocks

Use fenced code blocks for:

- ASCII diagrams
- Terminal commands
- Automation examples
- LCD examples
- Configuration snippets
- File paths
- Naming templates

Label the code block language when it helps the reader.

Examples:

````markdown
```text
[Outer Door] [Airlock Chamber] [Inner Door]
```
````

````markdown
```bash
git status
```
````

Use `text` for diagrams, plain examples, and non-executable snippets.

Use `bash` for shell commands.

Use the appropriate language tag for scripts when known.

---

## 18. Inline Code

Use inline code formatting for:

- File names
- Folder paths
- Document IDs
- Block names when shown as exact names
- Group names
- Commands
- Configuration values

Examples:

```markdown
Open `docs/standards/SEEH-STD-001-documentation-style-guide.md`.

Rename the block to `AL_A01_Vent`.

Add the block to `GRP_AL_A01_All`.
```

Do not overuse inline code for ordinary prose.

---

## 19. Notices

Use standardized notice labels.

### Note

Use for additional information that helps the reader.

```markdown
> **Note**
>
> This layout assumes the Air Vent has conveyor access.
```

### Tip

Use for a useful shortcut or best practice.

```markdown
> **Tip**
>
> Rename blocks before grouping them. This makes troubleshooting easier later.
```

### Caution

Use when a mistake may cause malfunction or confusion.

```markdown
> **Caution**
>
> Do not open both airlock doors during pressurization.
```

### Warning

Use when a mistake may damage the build, endanger players, vent atmosphere, or break automation.

```markdown
> **Warning**
>
> Opening the exterior door before depressurization may vent the chamber atmosphere.
```

### Engineering Rationale

Use when explaining why a design uses a specific approach.

```markdown
> **Engineering Rationale**
>
> The Air Vent is placed inside the chamber so it measures the chamber atmosphere directly.
```

Do not use notices to hide required procedure steps.

---

## 20. Engineering Rationale

Major engineering recommendations should explain why the design was chosen.

A rationale should answer:

- What problem does this solve?
- What alternatives were considered?
- Why is this approach preferred?
- What tradeoffs does this create?
- What limitations remain?

Avoid:

```text
Use two doors because it is better.
```

Correct:

```text
Use two doors because an airlock must separate the pressurized interior from the exterior environment. The interlock prevents both doors from opening at the same time, reducing the risk of atmosphere loss.
```

---

## 21. Requirements Sections

A requirements section should identify what the reader needs before starting.

Include, where applicable:

- Game mode assumptions
- Grid size
- Required blocks
- Required materials
- Required tools
- Required mods
- Required scripts
- Required DLC
- Supported implementation levels

Example:

| Requirement          | Value             |
| -------------------- | ----------------- |
| Grid Size            | Large Grid        |
| Implementation Level | Level 0 — Vanilla |
| Required Mods        | None              |
| Scripts Required     | No                |
| Survival Ready       | Yes               |

---

## 22. Compatibility Sections

Compatibility sections should clearly state where the document applies.

Include, where applicable:

- Vanilla compatibility
- Modded compatibility
- Survival compatibility
- Creative compatibility
- Single-player compatibility
- Multiplayer compatibility
- Dedicated server considerations
- DLC assumptions

Example:

| Environment      | Supported   | Notes                                           |
| ---------------- | -----------:| ----------------------------------------------- |
| Vanilla          | Yes         | No mods required.                               |
| Survival         | Yes         | Materials must be available.                    |
| Multiplayer      | Yes         | Door timing should be tested under server load. |
| Dedicated Server | Conditional | Verify timer delays under latency.              |

---

## 23. Procedures

Procedures should be written as step-by-step instructions.

Each step should contain one primary action.

Correct:

```markdown
1. Place the Air Vent on the chamber wall.
2. Open the Control Panel.
3. Rename the Air Vent to `AL_A01_Vent`.
4. Enable **Depressurize** only during the exit cycle.
```

Avoid combining too many actions into one step.

Avoid:

```markdown
1. Place the vent, name it, group it, set the actions, and test everything.
```

When useful, include expected results.

Example:

```markdown
5. Press the exterior entry button.

Expected result: the exterior door closes, the chamber pressurizes, and the interior door opens after the delay.
```

---

## 24. Verification Sections

Every procedure should include verification steps.

Verification should tell the reader how to confirm correct behavior.

A verification section should include:

- Initial condition
- Action performed
- Expected result
- Failure indication where useful

Example:

| Test           | Action                                 | Expected Result                                  |
| -------------- | -------------------------------------- | ------------------------------------------------ |
| Door Interlock | Try to open both doors during a cycle. | Only one door can open at a time.                |
| Pressurization | Start the entry cycle.                 | Chamber pressurizes before the inner door opens. |
| Recovery       | Interrupt the cycle and reset it.      | System returns to a safe closed-door state.      |

Do not mark a design as verified unless it has actually been tested.

Detailed testing and verification requirements are governed by `SEEH-STD-005`.

---

## 25. Troubleshooting Sections

Troubleshooting should be organized by symptom.

Use this pattern:

```markdown
### Problem: The chamber does not pressurize

**Likely Causes**

- Air Vent is not connected to the conveyor network.
- Chamber is not airtight.
- Air Vent is set to depressurize.

**How to Check**

1. Inspect the Air Vent status.
2. Check the chamber for leaks.
3. Confirm oxygen supply is available.

**Resolution**

- Repair the leak.
- Reconnect the conveyor network.
- Correct the Air Vent mode.
```

Troubleshooting should not blame the reader.

Write objectively and focus on diagnosis.

---

## 26. Maintenance Sections

Maintenance sections should explain how to keep a system working after it is built.

Include, where applicable:

- Inspection points
- Common wear or damage locations
- Replacement procedure
- Reset procedure
- Safe shutdown procedure
- Expansion considerations
- Known limitations

Example:

```text
Inspect door groups after repairs. Rebuilt doors may not retain the original name or group membership.
```

---

## 27. Diagrams

Use diagrams when spatial layout, flow, or system relationships matter.

ASCII diagrams are preferred for simple layouts because they render reliably in Markdown.

Use image diagrams when ASCII is insufficient.

Diagram requirements:

- Provide a short caption or explanation.
- Define symbols used in the diagram.
- Keep diagrams readable in raw Markdown.
- Use fenced code blocks for ASCII diagrams.
- Cross-reference diagrams from the procedure when needed.

Detailed diagram and blueprint requirements are governed by `SEEH-STD-003`.

---

## 28. Links and Cross-References

Use relative links for repository files whenever possible.

Correct:

```markdown
See [SEEH-STD-004 — Terminology](SEEH-STD-004-terminology.md).
```

Avoid raw URLs for internal repository files.

Use document IDs when referring to standards.

Example:

```markdown
Terminology is governed by `SEEH-STD-004`.
```

When referencing a section, include both the document ID and section title when practical.

Example:

```markdown
See `SEEH-000`, Section 14, AI Collaboration Model.
```

---

## 29. File Names and Document IDs

Document IDs and file names are governed by `SEEH-STD-002`.

This style guide requires that every document display its document ID in the metadata block.

Do not rename documents casually.

If a document ID changes, update:

- File name
- Title
- Metadata block
- Cross-references
- Revision history
- Related index entries

---

## 30. Markdown Formatting Rules

Use standard Markdown.

General rules:

- Use one blank line between sections.
- Use fenced code blocks for multiline examples.
- Use tables only when they improve readability.
- Avoid trailing spaces except where intentionally used for Markdown line breaks.
- Avoid HTML unless Markdown cannot express the required structure.
- Keep raw Markdown readable.
- Prefer simple formatting over complex formatting.

Do not rely on platform-specific rendering quirks.

A document should remain understandable in plain text.

---

## 31. AI-Generated Content

AI-generated content may be used in SEEH, but it is not automatically authoritative.

AI-generated content must be reviewed before release.

Use the project rule:

> **AI may draft. Humans approve. Reality verifies.**

When AI assists with a document:

- Review for accuracy.
- Review for terminology consistency.
- Review for unsupported claims.
- Review for missing verification steps.
- Record meaningful AI-assisted revisions in the revision history.

Do not publish AI-generated technical claims as verified unless they are supported by authoritative sources or in-game testing.

---

## 32. Review Expectations

Before release, documents should receive review appropriate to their purpose.

Recommended review passes:

| Review Type      | Purpose                                                    |
| ---------------- | ---------------------------------------------------------- |
| Technical Edit   | Improves clarity, grammar, readability, and tone.          |
| Standards Audit  | Checks compliance with SEEH standards.                     |
| Fact Check       | Verifies technical claims and current behavior.            |
| Blueprint Review | Checks build reproducibility and engineering completeness. |
| Release Review   | Confirms the document is ready for publication.            |

Not every document needs every review pass.

A build guide usually needs technical edit, standards audit, blueprint review, and verification.

A project governance document usually needs technical edit, standards audit, and release review.

---

## 33. Release Readiness

A document is ready for release when:

- The purpose is clear.
- The scope is defined.
- Required sections are present.
- Terminology follows `SEEH-STD-004`.
- Naming follows `SEEH-STD-002`.
- Markdown formatting is consistent.
- Internal links and references are correct.
- Technical claims are verified or labeled appropriately.
- Revision history is complete.
- No unresolved blocking review comments remain.

For engineering designs, release also requires appropriate testing and an appropriate Quality Level (Bronze, Silver, Gold, or Platinum) as defined in `SEEH-STD-004`, consistent with the design's intended release status.

For standards documents, release requires consistency with the project charter and related standards.

---

## 34. Revision History Requirements

Every document must end with a revision history table.

Use this format:

```markdown
## Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | YYYY-MM-DD | Author Name | Initial draft. |
```

The **Version** column tracks the same value as the **Revision** field in the document's metadata block (see Section 9).

Revision notes should be specific enough to explain what changed.

Avoid:

```text
Updated stuff.
```

Correct:

```text
Added compatibility section and clarified verification requirements.
```

---

## 35. Standard Compliance Checklist

Use this checklist before submitting a SEEH document for review.

- [ ] Document has one H1 title.
- [ ] Metadata block is complete.
- [ ] Document ID is present.
- [ ] Status value is valid.
- [ ] Revision number is updated.
- [ ] Purpose is clear.
- [ ] Scope is defined where applicable.
- [ ] Required sections are present.
- [ ] Terminology follows `SEEH-STD-004`.
- [ ] Naming follows `SEEH-STD-002`.
- [ ] Procedures are numbered when order matters.
- [ ] Verification steps are included where applicable.
- [ ] Troubleshooting is included where applicable.
- [ ] Notices use standard labels.
- [ ] Tables are readable in raw Markdown.
- [ ] Code blocks use language labels where useful.
- [ ] Internal links are relative where practical.
- [ ] Revision history is complete.

---

## 36. Revision History

| Version | Date       | Author                    | Notes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| ------- | ---------- | ------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 0.1.0   | 2026-07-07 | Ian Comings / ChatGPT     | Initial draft.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 0.2.0   | 2026-07-07 | Ian Comings / ChatGPT     | Expanded style guide into a full documentation standard; added authority, status values, revision numbering, document headers, terminology rules, procedures, verification, troubleshooting, maintenance, AI-generated content, review expectations, release readiness, and compliance checklist.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| 0.3.0   | 2026-07-07 | Claude / Technical Editor | Standardized example-pair labeling to "Correct:/Avoid:" in Sections 7, 20, 23, and 34; resolved a phrasing contradiction in Section 17; added a clarifying comma in Section 2. Added "Diagrams" to the Section 12 Standard Document Structure list to align with SEEH-000's Quality Expectations. Added an "Evidence Expectations for Technical Claims" subsection to Section 8 to operationalize SEEH-000's Evidence Expectations (Verification Vocabulary). Added a clarifying note in Section 9, and a cross-reference in Section 34, resolving the Revision/Version field-naming ambiguity between the metadata block and the revision-history table. Broadened the Section 8 PB abbreviation example to match SEEH-STD-004's full permitted-context list. Added a SEEH-STD-005 cross-reference to Section 24. Added a Quality Level cross-reference to Section 33. No document ID, naming convention, approved terminology, or engineering content changed. |
| 0.3.1 | 2026-07-07 | Ian Comings | Promoted Status from Draft to Released following completed Technical Edit and Standards Audit passes, with all findings resolved. No content changes since 0.3.0. |
