# SEEH-STD-002 — Naming Standard

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-STD-002  
**Revision:** 0.2.5  
**Status:** Released  
**Last Updated:** 2026-07-07  

---

## 1. Purpose

This standard defines naming conventions for Space Engineers Engineering Handbook (SEEH) documents, blocks, block groups, systems, examples, diagrams, blueprints, and engineering packages.

Consistent naming makes systems easier to:

- Build
- Identify
- Automate
- Troubleshoot
- Maintain
- Expand
- Document
- Share with other engineers

A well-named system should communicate its purpose before a reader opens the Control Panel or reads the full documentation.

---

## 2. Scope

This standard applies to:

- Document IDs
- File names
- Folder names
- Block names
- Block group names
- System names
- Module names
- Blueprint names
- Diagram labels
- Example names
- Automation references
- LCD names and status screens

This standard applies to SEEH documentation and provides recommended in-game naming patterns for builds.

Individual builds may adapt naming details where needed, but handbook examples should follow this standard unless a document explicitly explains why it uses a variant.

---

## 3. Authority

`SEEH-STD-002` is the primary naming standard for SEEH.

Related standards:

- `SEEH-000` defines the project charter and governance.
- `SEEH-STD-001` defines document formatting and style.
- `SEEH-STD-003` defines diagram and blueprint documentation standards.
- `SEEH-STD-004` defines canonical terminology.
- `SEEH-STD-005` defines testing and verification standards.

When another standard references naming, this document provides the naming rules unless the other standard defines a more specific requirement.

---

## 4. Naming Principles

SEEH names should be:

- Consistent
- Human-readable
- Automation-friendly
- Short enough to use in-game
- Specific enough to troubleshoot
- Stable across revisions
- Meaningful outside the original build context

Avoid names that depend only on memory or personal preference.

Poor names:

```text
Door 1
Main Thing
Bob's Timer
Cool Airlock
```

Better names:

```text
AL_A01_Door_Outer
AL_A01_Timer_Entry
GRP_AL_A01_Doors
```

---

## 5. Character Rules

Use the following character rules for in-game names and documentation examples.

| Rule | Requirement |
|---|---|
| Word separator | Use underscores `_` between naming segments. |
| Spaces | Avoid spaces in exact block and group names. |
| Case | Use uppercase for system prefixes and area codes; use PascalCase or clear words for component names. |
| Special characters | Avoid special characters unless required by a specific mod or script. |
| Ambiguous characters | Avoid names that rely on `O` versus `0` or `I` versus `1` distinctions. |
| Length | Keep names as short as practical while preserving meaning. |

Correct:

```text
AL_A01_Door_Outer
GRP_AL_A01_Doors
PWR_A01_Battery_Main
```

Avoid:

```text
Airlock Door Outside
AL-A01-Door-Outer
AL A01 Door Outer
A1 outside thing
```

---

## 6. Core Naming Pattern

Use this general pattern for in-game engineering components:

```text
SYSTEM_AREA_NUMBER_COMPONENT_ROLE
```

Where:

| Segment | Meaning | Example |
|---|---|---|
| `SYSTEM` | System prefix | `AL` |
| `AREA` | Area or build section | `A` |
| `NUMBER` | Two-digit system number | `01` |
| `COMPONENT` | Block or component type | `Door` |
| `ROLE` | Optional functional role | `Outer` |

Example:

```text
AL_A01_Door_Outer
```

Meaning:

| Segment | Value | Meaning |
|---|---|---|
| System | `AL` | Airlock |
| Area | `A` | Primary area |
| Number | `01` | First airlock in that area |
| Component | `Door` | Door block |
| Role | `Outer` | Exterior-side door |

The role segment may be omitted when the component is unique within the system.

Example:

```text
AL_A01_Vent
```

---

## 7. System Prefixes

Use the following standard system prefixes.

| Prefix | Meaning | Typical Use |
|---|---|---|
| `AL` | Airlock | Personnel, cargo, hangar, and maintenance airlocks |
| `AT` | Atmosphere | Oxygen, pressurization, atmosphere management |
| `PWR` | Power | Batteries, reactors, solar, power distribution |
| `HYD` | Hydrogen | Tanks, generators, hydrogen engines, fueling |
| `MAT` | Material Handling | Conveyors, sorters, cargo routing |
| `CTL` | Control System | Timers, Event Controllers, scripts, automation logic |
| `IND` | Industry | Refineries, assemblers, production systems |
| `DEF` | Defense | Weapons, shields if modded, defensive control systems |
| `DCK` | Docking | Connectors, merge blocks, docking control systems |
| `BAS` | Base Design | Base-wide infrastructure and layout systems |
| `SHP` | Ship | Ship-wide systems not covered by a more specific prefix |
| `STN` | Station | Station-wide systems not covered by a more specific prefix |
| `FLT` | Fleet | Fleet-level identifiers and shared systems |
| `LCD` | Display | Status screens and display panels |
| `LGT` | Lighting | Interior, exterior, signal, and status lighting |
| `COM` | Communications | Antennas, beacons, laser antennas |
| `NAV` | Navigation | Cameras, remote controls, navigation aids |
| `HNG` | Hangar | Hangar doors, bays, vehicle storage systems |
| `MED` | Medical | Medical rooms, survival kits, cryo systems |
| `SEC` | Security | Access control, lockdowns, restricted areas |

Do not create new prefixes casually.

If a new prefix is needed, define it in the relevant document and propose adding it to this standard in a later revision.

---

## 8. Area Codes

Area codes identify major build sections.

Default area codes:

| Code | Meaning |
|---|---|
| `A` | Primary area, main base, or central section |
| `B` | Industrial section |
| `C` | Hangar, vehicle bay, or cargo bay |
| `D` | Engineering section |
| `E` | Medical, habitation, or crew support |
| `F` | Defense perimeter or weapons section |
| `G` | Power generation area |
| `H` | Hydrogen or fuel area |
| `I` | Interior utility area |
| `X` | External or exposed system |
| `T` | Test or training area |

Projects may define their own area maps.

When a project uses custom area codes, document them in the project or blueprint guide.

Example area map:

| Code | Local Meaning |
|---|---|
| `A` | Main pressurized base |
| `B` | Refinery hall |
| `C` | Small-grid hangar |
| `X` | Exterior pad |

---

## 9. Numbering Rules

Use two digits for system numbers.

Correct:

```text
AL_A01
AL_A02
AL_A03
```

Avoid:

```text
AL_A1
AL_A2
AL_A3
```

Use numbers to distinguish separate systems of the same type in the same area.

Example:

| Name | Meaning |
|---|---|
| `AL_A01` | First airlock in Area A |
| `AL_A02` | Second airlock in Area A |
| `PWR_G01` | First power system in Area G |
| `PWR_G02` | Second power system in Area G |

Do not renumber existing systems casually.

Stable numbering supports automation, documentation, screenshots, and troubleshooting.

The two-digit rule above applies to in-game system numbers (Sections 6–14). Document numbers, module numbers, and blueprint numbers follow their own conventions — see Section 15 (Module Names), Section 16 (Blueprint Names), and Section 17 (Document IDs).

---

## 10. Component Names

Component names identify the block or device type.

Use clear component terms.

Examples:

| Component Name | Typical Block or Use |
|---|---|
| `Door` | Door, sliding door, airtight door |
| `Vent` | Air Vent |
| `Button` | Button Panel or cockpit toolbar button reference |
| `Timer` | Timer Block |
| `Event` | Event Controller |
| `Sensor` | Sensor block |
| `LCD` | LCD Panel or display surface |
| `Light` | Interior Light, spotlight, status light |
| `Battery` | Battery |
| `Reactor` | Reactor |
| `Solar` | Solar Panel |
| `Connector` | Connector |
| `Merge` | Merge Block |
| `Sorter` | Conveyor Sorter |
| `Cargo` | Cargo Container |
| `Tank` | Oxygen or hydrogen tank |
| `Gen` | Generator or production block where context is clear |
| `Cam` | Camera |
| `Antenna` | Antenna |
| `Beacon` | Beacon |
| `PB` | Programmable Block, only when space-constrained or in code-facing names |

Use official block names in prose.

Short component names may be used in exact in-game names when they improve usability.

---

## 11. Role Names

Role names describe the component's function within the system.

Common role names:

| Role | Meaning |
|---|---|
| `Outer` | Exterior-side component |
| `Inner` | Interior-side component |
| `Outside` | Exterior-side control or interface |
| `Inside` | Interior-side control or interface |
| `Entry` | Entry-cycle component |
| `Exit` | Exit-cycle component |
| `Main` | Primary component |
| `Backup` | Backup component |
| `Status` | Status display or status indicator |
| `Warning` | Warning indicator |
| `Green` | Green status light |
| `Red` | Red status light |
| `Amber` | Amber or caution status light |
| `Reset` | Reset control |
| `Lockdown` | Emergency lockdown control |
| `Manual` | Manual override control |
| `Auto` | Automated control |
| `Input` | Input-side component |
| `Output` | Output-side component |
| `High` | High-priority or high-level function |
| `Low` | Low-priority or low-level function |

Examples:

```text
AL_A01_Door_Outer
AL_A01_Door_Inner
AL_A01_Button_Outside
AL_A01_Button_Inside
AL_A01_Timer_Entry
AL_A01_Timer_Exit
AL_A01_Light_Green
AL_A01_Light_Red
```

---

## 12. Block Naming Examples

Airlock example:

```text
AL_A01_Door_Outer
AL_A01_Door_Inner
AL_A01_Vent
AL_A01_Button_Outside
AL_A01_Button_Inside
AL_A01_LCD_Status
AL_A01_Light_Green
AL_A01_Light_Red
AL_A01_Timer_Entry
AL_A01_Timer_Exit
AL_A01_Event_Pressurized
AL_A01_Event_Depressurized
```

Power example:

```text
PWR_G01_Battery_Main
PWR_G01_Battery_Backup
PWR_G01_Reactor_Main
PWR_G01_LCD_Status
PWR_G01_Timer_Reset
```

Docking example:

```text
DCK_C01_Connector_Main
DCK_C01_Cam_Align
DCK_C01_Light_Green
DCK_C01_Light_Red
DCK_C01_LCD_Status
```

---

## 13. Block Group Names

Block groups must begin with `GRP`.

Use this pattern:

```text
GRP_SYSTEM_AREA_NUMBER_FUNCTION
```

Examples:

```text
GRP_AL_A01_All
GRP_AL_A01_Doors
GRP_AL_A01_Lights
GRP_AL_A01_LCDs
GRP_AL_A01_Controls
GRP_AL_A01_Timers
GRP_AL_A01_Interlocks
```

Group names should describe the group's function, not merely the block type, when a functional grouping is clearer.

Correct:

```text
GRP_AL_A01_Controls
GRP_PWR_G01_Backup
```

Avoid:

```text
GRP_Stuff
GRP_Doors1
Main Things
```

---

## 14. System Names

A system name identifies a complete engineering system.

Use this pattern:

```text
SYSTEM_AREA_NUMBER — Human-Readable Name
```

Examples:

```text
AL_A01 — Personnel Airlock
PWR_G01 — Main Battery Bank
DCK_C01 — Small Grid Docking Port
```

Use the machine-readable prefix for automation and the human-readable title for documentation.

In prose, introduce the full name first.

Example:

```text
`AL_A01 — Personnel Airlock` separates the exterior pad from the main base interior.
```

Later references may use `AL_A01` when the context is clear.

---

## 15. Module Names

A module is a reusable engineering package.

Use this pattern:

```text
SEEH-MOD-SYSTEM-NUMBER — Module Name
```

Examples:

```text
SEEH-MOD-AL-001 — Personnel Airlock Module
SEEH-MOD-PWR-001 — Battery Bank Module
SEEH-MOD-DCK-001 — Docking Port Module
```

Module names should be stable once published.

If a module is superseded, deprecate the old module rather than renaming it casually.

This pattern follows the general document ID structure in Section 17, with a system code inserted between the `MOD` family code and the number.

---

## 16. Blueprint Names

Blueprint names should identify the project, system, version, and implementation level when practical.

Use this pattern:

```text
SEEH_SYSTEM_NUMBER_NAME_LEVEL_REVISION
```

Example:

```text
SEEH_AL_001_PersonnelAirlock_L0_v0-1-0
```

Meaning:

| Segment | Meaning |
|---|---|
| `SEEH` | Project |
| `AL` | System |
| `001` | Blueprint number |
| `PersonnelAirlock` | Human-readable name without spaces |
| `L0` | Implementation Level 0 |
| `v0-1-0` | Revision 0.1.0, using hyphens for file-safe naming |

Use file-safe names for exported files.

Avoid spaces and special characters in distributable blueprint package names.

---

## 17. Document IDs

Use this general pattern:

```text
SEEH-FAMILY-NUMBER
```

Examples:

```text
SEEH-000
SEEH-STD-001
SEEH-ATM-001
SEEH-PWR-001
SEEH-HYD-001
SEEH-EDR-0001
```

Where:

| Segment | Meaning |
|---|---|
| `SEEH` | Project |
| `FAMILY` | Document family or volume |
| `NUMBER` | Document number |

Project-level documents may use:

```text
SEEH-000
```

Standards use:

```text
SEEH-STD-001
```

Engineering Decision Records use:

```text
SEEH-EDR-0001
```

Number length varies by document family and should stay consistent within each family once established. Three digits is the default across most families (`STD`, `ATM`, `PWR`, `HYD`, `MOD`, and similar), for example `SEEH-STD-001`. `EDR` is the stated exception, using four digits (`SEEH-EDR-0001`).

Avoid mixing document ID patterns.

Use `SEEH-EDR-0001`, not `EDR-0001`, when referring to repository EDRs.

---

## 18. Document Families

Standard document families:

| Family | Meaning |
|---|---|
| `STD` | Standards |
| `EDR` | Engineering Decision Records |
| `MOD` | Modules |
| `ATM` | Atmosphere and airlocks |
| `PWR` | Power systems |
| `HYD` | Hydrogen systems |
| `MAT` | Material handling |
| `CTL` | Control systems and automation |
| `IND` | Industry |
| `DEF` | Defense |
| `DCK` | Docking |
| `BAS` | Base design |
| `SHP` | Ships |
| `STN` | Stations |
| `FLT` | Fleet |
| `REF` | Reference |
| `TPL` | Templates |
| `TUT` | Tutorials |
| `APP` | Appendices |

Document families should align with repository structure where practical.

---

## 19. File Names

Markdown file names should use the document ID followed by a lowercase kebab-case short title.

Use this pattern:

```text
DOCUMENT-ID-short-title.md
```

Examples:

```text
SEEH-STD-002-naming-standard.md
SEEH-ATM-001-personnel-airlock-mk1.md
SEEH-PWR-001-battery-bank-standard.md
SEEH-EDR-0001-document-id-system.md
```

Rules:

- Preserve the document ID at the start of the file name.
- Use lowercase words after the document ID.
- Use hyphens between words.
- Avoid spaces.
- Avoid punctuation except hyphens.
- Keep titles concise.

The document title and file name should clearly correspond.

---

## 20. Folder Names

Repository folder names should use lowercase kebab-case.

Examples:

```text
docs/standards/
docs/atmosphere/
docs/power/
docs/engineering-decision-records/
assets/diagrams/
examples/blueprints/
```

Avoid:

```text
Docs/Standards/
docs/Power Systems/
docs/random stuff/
```

Folder names should describe content category, not temporary status.

Use `archive/` only for intentionally retained deprecated or historical material.

---

## 21. Diagram Labels

Diagram labels should match the names used in the document whenever practical.

Example:

```text
[AL_A01_Door_Outer] -- [AL_A01_Chamber] -- [AL_A01_Door_Inner]
```

For compact diagrams, abbreviations may be used if a legend is provided.

Example:

```text
OD = Outer Door
ID = Inner Door
AV = Air Vent
```

Do not use diagram-only labels that cannot be traced back to the build or procedure.

---

## 22. LCD and Display Names

LCDs and display panels should identify the system and purpose.

Use this pattern:

```text
SYSTEM_AREA_NUMBER_LCD_ROLE
```

Examples:

```text
AL_A01_LCD_Status
PWR_G01_LCD_Status
HYD_H01_LCD_Tanks
DCK_C01_LCD_Alignment
```

If a display surface belongs to a cockpit or programmable block, document the exact surface assignment in the configuration section.

Example:

```text
CTL_A01_PB_Display — Surface 0: Airlock status
```

---

## 23. Timer Block and Automation Names

Timer Blocks, Event Controllers, Programmable Blocks, and script-facing components require especially clear names because automation depends on them.

Examples:

```text
AL_A01_Timer_Entry
AL_A01_Timer_Exit
AL_A01_Timer_Reset
AL_A01_Event_Pressurized
AL_A01_Event_Depressurized
CTL_A01_PB_AirlockControl
```

Automation names should indicate purpose, not only block type.

Poor:

```text
Timer 1
Timer 2
PB Test
```

Better:

```text
AL_A01_Timer_Entry
AL_A01_Timer_Exit
CTL_A01_PB_AirlockControl
```

If renaming a block would break automation, update the automation and document the change in the revision history.

---

## 24. Variants and Implementation Levels

When naming variants, use the implementation levels defined by SEEH.

Preferred variant names:

```text
Vanilla Variant
QoL Variant
Engineering Variant
Enhanced Engineering Variant
Server Edition Variant
```

For compact labels, use:

| Label | Meaning |
|---|---|
| `L0` | Level 0 — Vanilla |
| `L1` | Level 1 — Quality of Life |
| `L2` | Level 2 — Engineering |
| `L3` | Level 3 — Enhanced Engineering |
| `L4` | Level 4 — Server Edition |

Example blueprint names:

```text
SEEH_AL_001_PersonnelAirlock_L0_v0-1-0
SEEH_AL_001_PersonnelAirlock_L2_v0-1-0
```

Do not invent custom implementation-level names in individual documents.

---

## 25. Revision Labels in File-Safe Names

When a revision must appear in a file-safe name, replace dots with hyphens.

| Revision | File-Safe Label |
|---|---|
| `0.1.0` | `v0-1-0` |
| `1.0.0` | `v1-0-0` |

Use the normal dotted revision format in document metadata and revision history.

Use file-safe labels only in file names, package names, or export names where dots may be undesirable.

---

## 26. Deprecated and Superseded Names

Do not delete or silently rename published names without documentation.

When a name is replaced:

1. Mark the old name as deprecated.
2. Identify the replacement name.
3. Explain the reason for the change.
4. Update cross-references.
5. Record the change in the revision history.

Example:

| Deprecated Name | Replacement Name | Reason |
|---|---|---|
| `PW_A01_Battery` | `PWR_G01_Battery_Main` | Prefix standardized from `PW` to `PWR`; area changed to power-generation area. |

Automation, screenshots, saved blueprints, and community references may depend on older names.

Deprecation preserves traceability.

---

## 27. Names in Examples

Examples should use realistic names.

Avoid placeholders that do not teach the naming system.

Poor:

```text
Door1
ThingA
GroupTest
```

Better:

```text
AL_A01_Door_Outer
AL_A01_Vent
GRP_AL_A01_Doors
```

When a placeholder is necessary, mark it clearly.

Example:

```text
SYSTEM_AREA_NUMBER_COMPONENT
```

---

## 28. Naming Exceptions

Exceptions are allowed when required by:

- Game limitations
- Mod limitations
- Script limitations
- Display-space constraints
- Existing published blueprint compatibility
- Multiplayer server conventions

Exceptions should be documented.

An exception note should include:

- The normal SEEH name
- The exception name
- The reason for the exception
- The affected document or system

Example:

| SEEH Name | Exception Name | Reason |
|---|---|---|
| `CTL_A01_PB_AirlockControl` | `AirlockPB` | Existing script expects this exact name. |

---

## 29. Naming Review Checklist

Use this checklist before publishing a document or blueprint.

- [ ] Document ID follows the correct pattern.
- [ ] File name begins with the document ID.
- [ ] File name uses lowercase kebab-case after the document ID.
- [ ] Block names use approved system prefixes.
- [ ] Block names include area and two-digit system number where applicable.
- [ ] Block groups begin with `GRP`.
- [ ] System names use the `SYSTEM_AREA_NUMBER — Human-Readable Name` pattern.
- [ ] Module names use the `SEEH-MOD-SYSTEM-NUMBER — Module Name` pattern and remain stable once published.
- [ ] Automation-facing blocks have purpose-specific names.
- [ ] Diagram labels match documented names or include a legend.
- [ ] Blueprint names include project, system, number, implementation level, and revision where practical.
- [ ] Deprecated names are documented.
- [ ] Exceptions are explained.

---

## 30. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.2.0 | 2026-07-07 | Ian Comings / ChatGPT | Expanded naming standard into a full governance draft; added authority, character rules, system prefixes, area codes, component and role names, system names, module names, blueprint names, document families, file and folder naming, diagram labels, LCD/display names, automation names, variant naming, deprecation rules, exceptions, and naming review checklist. |
| 0.2.1 | 2026-07-07 | Claude / Technical Editor | Copy-edit pass: clarified the Scope sentence mixing mandatory and advisory language (Section 2); tightened redundant phrasing in Block Group Names (Section 13). No naming patterns, prefixes, terminology, or engineering content changed. Flagged for standards-audit follow-up: unexplained two-digit vs. three-digit numbering distinction between system names (Section 9) and module/blueprint names (Sections 15–16); `MOD` document family used in Section 15 but not listed in the Document Families table (Section 18). |
| 0.2.2 | 2026-07-07 | Claude / Technical Editor | Resolved the two items flagged in 0.2.1: added a cross-reference note in Section 9 scoping the two-digit rule to in-game system numbers and pointing to Sections 15–17 for document/module/blueprint numbering; added a note in Section 15 explaining the `MOD` pattern as an extension of the Section 17 document ID structure; added a note in Section 17 stating that number length varies by document family (three digits for `STD`, four for `EDR`); added `MOD` to the Document Families table (Section 18); added System Names and Module Names checks to the Naming Review Checklist (Section 29), which previously covered every other documented pattern except these two. No naming conventions, prefixes, numbering schemes, or document IDs were changed — these edits document existing, already-used conventions rather than introducing new ones. |
| 0.2.3 | 2026-07-07 | Ian Comings / Human Project Lead | Standards-audit pass (`seeh-standards-audit`) reviewed this document for compliance with SEEH-000 and SEEH-STD-004; full verification against SEEH-STD-001, SEEH-STD-003, and SEEH-STD-005 is pending access to those documents. Fixed an internal label contradiction: the Revision History table column was named "Version" while this document's own header field and Section 25 both use "Revision" — column renamed to "Revision" for consistency. Trimmed the `MOD` row in the Document Families table (Section 18) to match the plain-description style of its neighboring rows. Broadened the numbering-length note in Section 17 to state that three digits is the default across most families, with `EDR` as the stated four-digit exception. Reviewed and approved by Ian Comings, Human Project Lead, per the SEEH-000 AI Contribution Rule. |
| 0.2.4 | 2026-07-07 | Claude / Technical Editor | Reviewed against `SEEH-STD-001` (Documentation Style Guide), made available for the first time this pass. Reverted the 0.2.3 change to the Revision History column header: `SEEH-STD-001` Sections 9 and 34 explicitly establish "Version" (table column) and "Revision" (metadata field) as intentionally distinct labels for the same tracked value, so the original "Version" heading was correct and the 0.2.3 rename was an error made without that standard available. Column reverted to "Version." No other changes required — remaining structure, terminology, code-block labeling, and cross-reference style were checked against `SEEH-STD-001` and found compliant. `SEEH-STD-003` and `SEEH-STD-005` remain unavailable for full verification. |
| 0.2.5 | 2026-07-07 | Ian Comings / Human Project Lead | Promoted Status from Draft to Released following completed Technical Edit (0.2.1) and Standards Audit (0.2.3, corrected 0.2.4) passes, with all blocking findings resolved. No content changes since 0.2.4. |
