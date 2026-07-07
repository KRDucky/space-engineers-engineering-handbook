# SEEH-STD-003 — Diagram and Blueprint Standard

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-STD-003  
**Revision:** 0.2.5  
**Status:** Released  
**Last Updated:** 2026-07-07  

---

## 1. Purpose

This standard defines how diagrams, screenshots, blueprint documentation, and reproducible build packages are created for the Space Engineers Engineering Handbook (SEEH).

Diagrams and blueprints should make construction easier, not more confusing.

A reader should be able to use a SEEH diagram or blueprint package to understand:

- What the system is
- How it is oriented
- How large it is
- What components it contains
- How components connect
- How to reproduce the design
- How to verify that the design matches the documentation

---

## 2. Scope

This standard applies to:

- ASCII diagrams
- Layout diagrams
- Flow diagrams
- Wiring and control diagrams
- Conveyor diagrams
- Power diagrams
- Screenshot usage
- Image assets
- Blueprint documentation
- Blueprint package metadata
- Build reproducibility requirements
- Diagram review checklists

Naming of blocks, groups, files, folders, blueprints, and diagrams is governed by `SEEH-STD-002`.

General document formatting is governed by `SEEH-STD-001`.

Terminology is governed by `SEEH-STD-004`.

Testing and verification are governed by `SEEH-STD-005`.

---

## 3. Authority

`SEEH-STD-003` is the primary diagram and blueprint documentation standard for SEEH.

If a build guide contains diagrams or blueprint-style construction information, this standard applies.

If a diagram conflicts with written instructions, the conflict must be corrected before release.

A diagram is not decoration.

A diagram is engineering documentation.

---

## 4. Diagram Principles

SEEH diagrams should be:

- Clear
- Accurate
- Labeled
- Reproducible
- Easy to read in Markdown
- Consistent with the build procedure
- Consistent with block and group names
- Simple enough to maintain over time

A good diagram should reduce ambiguity.

A poor diagram creates new interpretation problems.

---

## 5. Primary Diagram Format

ASCII diagrams are the primary diagram format for simple layouts because they are:

- Easy to edit
- Easy to view on tablets
- Easy to store in Markdown
- Easy to review in Git diffs
- Usable without downloading external images
- Durable across platforms

Screenshots, rendered diagrams, and image assets may supplement ASCII diagrams, but they should not replace ASCII diagrams when a simple text diagram can clearly communicate the layout.

---

## 6. When to Use Each Diagram Type

Use the simplest diagram type that communicates the engineering information accurately.

| Diagram Type | Use For |
|---|---|
| ASCII layout diagram | Simple block placement, room layout, airlocks, docking ports |
| ASCII flow diagram | Oxygen flow, hydrogen flow, conveyor logic, signal flow |
| ASCII control diagram | Timer Block/Event Controller relationships, interlocks, automation logic |
| Screenshot | Visual confirmation, complex placement, block orientation, finished result |
| Annotated image | Complex spatial relationships that ASCII cannot show clearly |
| Table | Configuration, block lists, signal states, test results |
| External drawing | Large systems where ASCII becomes unreadable |

Do not use screenshots as a substitute for missing build instructions.

---

## 7. Required Diagram Information

Each construction diagram should include, where applicable:

- View type
- Orientation
- Dimensions
- Scale or grid size
- Legend
- Important block labels
- Coordinate reference
- Implementation level
- Related procedure section
- Notes about hidden blocks or vertical layers

Minimum acceptable diagram information:

| Requirement | Required For |
|---|---|
| View type | All diagrams |
| Orientation | Layout diagrams |
| Legend | Any diagram using symbols |
| Dimensions | Blueprint and layout diagrams |
| Block labels | Any diagram intended for construction |
| Cross-reference | Diagrams used in procedures |

---

## 8. Diagram Titles

Every diagram should have a short title.

Use this pattern when practical:

```text
Figure NUMBER — Description
```

Examples:

```text
Figure 1 — Top View of AL_A01 Personnel Airlock
Figure 2 — Entry Cycle Control Flow
Figure 3 — Conveyor Routing for PWR_G01
```

In Markdown, place the title immediately before the diagram.

Example:

````markdown
**Figure 1 — Top View of AL_A01 Personnel Airlock**

```text
OUTSIDE
  ↑

[D] [V] [D]

INTERIOR
  ↓
```
````

---

## 9. View Types

Clearly identify the view type.

Common view labels:

| Label | Meaning |
|---|---|
| Top View | Looking down from above |
| Side View | Looking from the side |
| Front View | Looking at the primary face |
| Rear View | Looking at the opposite face |
| Section View | Cutaway through the build |
| Layer View | One vertical or horizontal layer |
| Flow View | Functional flow rather than physical layout |
| Control View | Automation or signal relationship |
| Exploded View | Parts separated for clarity |

If a diagram is not to scale, state that clearly.

Example:

```text
Control View — Not to scale
```

---

## 10. Orientation Labels

Use clear orientation markers.

Examples:

```text
NORTH / OUTSIDE
↑
```

For airlocks:

```text
OUTSIDE
  ↓
CHAMBER
  ↓
INTERIOR
```

For ships:

```text
BOW / FORWARD
↑
```

For vertical diagrams:

```text
UP
↑
DOWN
↓
```

Do not assume the reader knows which direction the diagram faces.

---

## 11. Coordinate System

Use `X`, `Y`, and `Z` when coordinates are needed.

Recommended convention:

| Axis | Meaning |
|---|---|
| `X` | Left / right |
| `Y` | Vertical |
| `Z` | Forward / back |

For airlocks, `Z+` should point toward the exterior unless otherwise stated.

For ships, `Z+` should point forward unless otherwise stated.

For bases and stations, define `Z+` in the document if orientation matters.

Example:

```text
Coordinate Convention:
X+ = right when facing exterior
Y+ = up
Z+ = toward exterior
```

If a build uses a different convention, document the exception before the first diagram.

---

## 12. Dimensions and Scale

State dimensions when a diagram is used for construction.

Use block dimensions.

Examples:

```text
Footprint: 3 blocks wide × 3 blocks long × 1 block high
Grid: Large Grid
```

For multi-layer diagrams, state the layer.

Example:

```text
Layer Y=0 — Floor Level
Layer Y=1 — Door and Vent Level
Layer Y=2 — Ceiling Utility Layer
```

If a diagram is schematic rather than spatial, label it as such.

Example:

```text
Schematic — Not to scale
```

---

## 13. Legend Requirements

Any diagram that uses symbols must include a legend.

Legend entries should be short and consistent.

Example:

```text
Legend:
D = Airtight Door
V = Air Vent
L = Interior Light
W = Wall / armor block
B = Button Panel
C = Conveyor connection
```

Do not use the same symbol for two different components in the same document unless the diagram clearly distinguishes them.

Avoid overly clever symbols.

The goal is readability.

---

## 14. Standard Diagram Symbols

Use the following symbols when practical.

| Symbol | Meaning |
|---|---|
| `D` | Door |
| `V` | Air Vent |
| `B` | Button Panel |
| `L` | Interior Light |
| `S` | Sensor |
| `E` | Event Controller |
| `T` | Timer Block |
| `P` | Programmable Block |
| `C` | Conveyor or connector path |
| `O` | Oxygen source or oxygen tank |
| `H` | Hydrogen source or hydrogen tank |
| `R` | Reactor |
| `A` | Assembler |
| `F` | Refinery |
| `G` | Gyroscope or gravity generator, define in legend |
| `W` | Wall / armor block |
| `#` | Solid structure |
| `.` | Empty space |
| `→` | Flow direction |
| `↔` | Bidirectional connection |

Symbols may be redefined for a specific diagram only if the legend clearly states the meaning.

---

## 15. ASCII Diagram Formatting

Use fenced code blocks with the `text` language label for ASCII diagrams.

Example:

````markdown
```text
OUTSIDE
  ↑

+---+---+---+
| L | D | L |
+---+---+---+
| W | V | W |
+---+---+---+
| L | D | L |
+---+---+---+

INTERIOR
  ↓
```
````

Rules:

- Use monospaced alignment.
- Keep diagrams readable in raw Markdown.
- Avoid excessive width.
- Prefer multiple smaller diagrams over one unreadable large diagram.
- Keep symbol spacing consistent.
- Place the legend near the diagram.
- Do not rely on color alone.

---

## 16. Example Layout Diagram

**Figure 1 — Top View of 3×3 Personnel Airlock**

```text
View: Top
Footprint: 3 wide × 3 long
Grid: Large Grid
Z+ Direction: Outside

OUTSIDE / Z+
    ↑

+---+---+---+
| L | D | L |
+---+---+---+
| W | V | W |
+---+---+---+
| L | D | L |
+---+---+---+

INTERIOR / Z-
    ↓

Legend:
D = Airtight Door
V = Air Vent
L = Interior Light
W = Wall / armor block
```

This diagram defines the chamber footprint, orientation, and major components.

The written procedure must still explain block placement, configuration, naming, and verification.

---

## 17. Multi-Layer Diagrams

Use multi-layer diagrams when vertical construction matters.

Each layer must be labeled.

Example:

```text
Layer Y=0 — Floor Level

+---+---+---+
| # | # | # |
+---+---+---+
| # | . | # |
+---+---+---+
| # | # | # |
+---+---+---+

Layer Y=1 — Doors and Vent Level

+---+---+---+
| L | D | L |
+---+---+---+
| W | V | W |
+---+---+---+
| L | D | L |
+---+---+---+
```

Do not combine multiple vertical layers into one unlabeled diagram.

---

## 18. Flow Diagrams

Use flow diagrams to show movement of atmosphere, hydrogen, power, materials, or control signals.

Example:

```text
Oxygen Source
     ↓
Air Vent
     ↓
Airlock Chamber
     ↓
Interior Atmosphere
```

Flow arrows should show direction.

If flow is bidirectional, use `↔`.

Example:

```text
Cargo Container ↔ Conveyor Sorter → Connector
```

Flow diagrams may be schematic and do not need to match physical layout if labeled as schematic.

---

## 19. Control Logic Diagrams

Use control logic diagrams to show automation relationships.

Example:

```text
AL_A01_Button_Outside
     ↓
AL_A01_Timer_Entry
     ↓
Close Outer Door
     ↓
Pressurize Chamber
     ↓
Open Inner Door
```

Control diagrams should identify:

- Trigger
- Controller
- Action sequence
- Expected final state
- Fail-safe or reset path where applicable

For complex automation, use tables in addition to diagrams.

Example:

| Step | Controller | Action | Expected State |
|---|---|---|---|
| 1 | `AL_A01_Timer_Entry` | Close `AL_A01_Door_Outer` | Outer door closed |
| 2 | `AL_A01_Timer_Entry` | Set `AL_A01_Vent` to pressurize | Chamber pressurizing |
| 3 | `AL_A01_Timer_Entry` | Open `AL_A01_Door_Inner` | Entry allowed |

---

## 20. Screenshot Standards

Screenshots may supplement diagrams.

When screenshots are used:

- Hide unnecessary HUD elements when practical.
- Use consistent lighting.
- Crop irrelevant background.
- Use a clear camera angle.
- Avoid visual clutter.
- Label the image clearly.
- Place the image near the related instructions.
- Include alt text or a caption.
- Reference the screenshot from the procedure.

Do not rely on screenshots alone for construction steps.

A screenshot should confirm or clarify the written procedure.

---

## 21. Annotated Images

Annotated images may be used when ASCII diagrams are insufficient.

Annotations should be:

- Legible
- Consistent
- Minimal
- Directly tied to the text
- Stored in the appropriate asset folder

Avoid excessive labels.

If an image needs too many labels, split it into multiple images or provide a diagram plus a table.

---

## 22. Image File Naming

Image and diagram files should follow `SEEH-STD-002`.

Recommended pattern:

```text
document-id_fig-NN_short-description.ext
```

Example:

```text
SEEH-ATM-001_fig-01_airlock-top-view.png
SEEH-ATM-001_fig-02_control-flow.png
```

Use lowercase file names when possible.

Avoid spaces.

Store images in the appropriate `assets/` or document-specific image folder as defined by the repository structure.

---

## 23. Blueprint Documentation

A SEEH blueprint is more than an exported in-game blueprint.

A SEEH blueprint package should include enough information for another engineer to reproduce, inspect, test, maintain, and modify the design.

A blueprint document should include, where applicable:

- Purpose
- Scope
- Implementation level
- Requirements
- Compatibility
- Dimensions
- Orientation
- Bill of materials
- Block naming list
- Block group list
- Diagrams
- Build procedure
- Configuration
- Automation behavior
- Verification procedure
- Troubleshooting
- Maintenance notes
- Expansion options
- Revision history

If a blueprint requires mods, scripts, DLC, or server settings, document them explicitly.

---

## 24. Blueprint Metadata

Blueprint packages should include metadata.

Recommended metadata:

| Field | Purpose |
|---|---|
| Blueprint Name | Exact blueprint name |
| Document ID | Related SEEH document |
| Revision | Blueprint or document revision |
| Implementation Level | Level 0 through Level 4 |
| Grid Size | Large Grid, Small Grid, or mixed |
| Environment | Space, planet, moon, station, ship |
| Required Mods | Required mods, if any |
| Required Scripts | Required scripts, if any |
| DLC Requirements | Required DLC, if any |
| Survival Ready | Whether the design is practical in survival |
| Tested Status | Bronze, Silver, Gold, or Platinum (Quality Levels, per `SEEH-STD-004`; describes the design's tested maturity, not the document's editorial status) |

Example:

| Field | Value |
|---|---|
| Blueprint Name | `SEEH_AL_001_PersonnelAirlock_L0_v0-1-0` |
| Document ID | `SEEH-ATM-001` |
| Revision | `0.1.0` |
| Implementation Level | Level 0 — Vanilla |
| Grid Size | Large Grid |
| Required Mods | None |
| Required Scripts | None |
| Survival Ready | Yes |
| Tested Status | Bronze |

---

## 25. Bill of Materials

Blueprint documentation should include a bill of materials when useful.

A bill of materials may be approximate for early drafts but should become more precise before release.

Example:

| Component | Quantity | Notes |
|---|---:|---|
| Airtight Door | 2 | Inner and outer doors |
| Air Vent | 1 | Chamber atmosphere control |
| Interior Light | 4 | Status indicators |
| Button Panel | 2 | Interior and exterior controls |
| Timer Block | 2 | Entry and exit cycles |

For survival-ready designs, include material requirements where practical.

---

## 26. Build Reproducibility Requirements

A blueprint or build guide is reproducible when another engineer can build it without guessing.

Reproducible documentation should provide:

- Required blocks
- Block placement
- Orientation
- Dimensions
- Naming
- Groups
- Configuration
- Automation
- Diagrams
- Verification steps
- Known limitations

A screenshot alone is not reproducible documentation.

---

## 27. Blueprint Variants

Blueprint variants should follow the implementation levels defined by SEEH.

Examples:

```text
Vanilla Variant
QoL Variant
Engineering Variant
Enhanced Engineering Variant
Server Edition Variant
```

Each variant should clearly state:

- What changes from the base design
- What additional requirements exist
- Why the variant exists
- What tradeoffs it introduces
- Whether it has been tested

Do not mix requirements from different variants without labeling them.

---

## 28. Blueprint Package Structure

A blueprint package may include:

```text
blueprint-name/
├── README.md
├── blueprint-metadata.md
├── build-guide.md
├── verification.md
├── troubleshooting.md
├── diagrams/
│   ├── fig-01-top-view.txt
│   └── fig-02-control-flow.txt
├── screenshots/
│   └── fig-03-finished-build.png
└── exports/
    └── blueprint-file-or-workshop-link.txt
```

Not every blueprint requires every file.

The package should include enough information for the design's complexity and release status.

---

## 29. Workshop and Export References

When referencing a Steam Workshop item or exported blueprint, document:

- Workshop title
- Workshop URL or reference location
- Author
- Date accessed or exported
- Required mods
- Required DLC
- Related SEEH document
- Known limitations

Do not rely on a Workshop page as the only documentation.

The SEEH repository should preserve the engineering explanation even if the external link changes.

---

## 30. Diagram and Blueprint Consistency

Diagrams, written procedures, block names, and blueprint exports must agree.

Before release, verify that:

- Diagram labels match documented names.
- Block names match `SEEH-STD-002`.
- Procedure steps match the diagram.
- The bill of materials matches the design.
- Screenshots match the current version.
- Blueprint metadata matches the document header.
- Implementation level is consistent throughout.
- Verification steps match the expected behavior.

If any item changes, update all affected references.

---

## 31. Accessibility and Readability

Diagrams should remain readable for users on:

- GitHub desktop
- Tablets
- Phones where practical
- Plain-text editors
- Printed copies
- Offline Markdown viewers

Do not rely on color alone.

Use labels, legends, captions, and text descriptions.

Avoid tiny text in screenshots.

For complex images, provide a written explanation below the image.

---

## 32. Diagram Review Checklist

Before releasing a diagram:

- [ ] View type is labeled.
- [ ] Orientation is labeled.
- [ ] Dimensions are clear where applicable.
- [ ] Legend is included when symbols are used.
- [ ] Symbols are consistent.
- [ ] Diagram matches the written procedure.
- [ ] Diagram uses names consistent with `SEEH-STD-002`.
- [ ] Diagram is readable in raw Markdown or as an image asset.
- [ ] Diagram has been checked against an in-game build when applicable.
- [ ] Screenshot or image assets are clearly named and referenced.

---

## 33. Blueprint Review Checklist

Before releasing a blueprint package:

- [ ] Purpose is clear.
- [ ] Implementation level is identified.
- [ ] Requirements are listed.
- [ ] Compatibility is stated.
- [ ] Dimensions are documented.
- [ ] Orientation is documented.
- [ ] Bill of materials is included where useful.
- [ ] Block names follow `SEEH-STD-002`.
- [ ] Block groups are documented.
- [ ] Diagrams are included where needed.
- [ ] Build procedure is reproducible.
- [ ] Configuration is documented.
- [ ] Automation behavior is documented.
- [ ] Verification procedure is included.
- [ ] Troubleshooting guidance is included.
- [ ] Maintenance notes are included where applicable.
- [ ] Variant requirements are clearly labeled.
- [ ] External Workshop or export references are documented.
- [ ] Revision history is complete.

---

## 34. Release Requirements

A diagram or blueprint package may be released only when it is clear, consistent, and tested to the level required by the document.

Release requirements:

- Diagrams match the written procedure.
- Blueprint names follow `SEEH-STD-002`.
- Documentation follows `SEEH-STD-001`.
- Terminology follows `SEEH-STD-004`.
- Verification follows `SEEH-STD-005`.
- Known limitations are documented.
- Required mods, scripts, and DLC are identified.
- No unresolved blocking review issues remain.

For engineering designs, in-game testing is required before release.

---

## 35. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.2.0 | 2026-07-07 | Ian Comings / ChatGPT | Expanded diagram and blueprint standard into a full governance draft; added authority, diagram types, titles, view types, coordinates, scale, legends, symbols, ASCII formatting, multi-layer diagrams, flow diagrams, control diagrams, screenshot and image rules, blueprint metadata, bill of materials, reproducibility requirements, variants, package structure, Workshop/export references, consistency checks, accessibility, review checklists, and release requirements. |
| 0.2.1 | 2026-07-07 | Claude / Technical Editor | Removed a redundant restatement of scope in Section 2; corrected "Light" to "Interior Light" in the Section 14 symbol table to comply with `SEEH-STD-004` naming conventions and match the table's existing pattern of full canonical block names. Flagged, but did not change, an unresolved three-way terminology variance ("Light" / "Indicator Light" / "Interior Light") between Sections 13, 14, and 16, and a possible taxonomy conflation between Documentation States and Quality Levels in the Section 24 "Tested Status" field — both routed to standards review. No engineering content, diagram standards, blueprint requirements, or document ID changed. |
| 0.2.2 | 2026-07-07 | Claude / Technical Editor | Resolved the two Major findings from the standards audit. (1) Standardized the `L` symbol to "Interior Light" in Sections 13 and 16, replacing "Indicator Light," to match Section 14 and resolve the document's internal contradiction of its own Section 13 symbol-consistency rule. (2) Repointed the Section 24 "Tested Status" field from Documentation States vocabulary (Draft/Experimental/Verified/Released/Deprecated) to Quality Levels vocabulary (Bronze/Silver/Gold/Platinum) per `SEEH-STD-001` Section 33, since the field describes engineering-design test maturity rather than document editorial state; updated the worked example from "Draft" to "Bronze" accordingly. **This resolution is an editorial judgment call between two valid options identified in the audit and should be confirmed by the document owner before release.** Also aligned the Section 17 layer labels ("Floor Level" / "Doors and Vent Level") to match the phrasing convention in Section 12's example. No engineering content, diagram standards, blueprint requirements, or document ID changed. |
| 0.2.3 | 2026-07-07 | Claude / Technical Editor | Comprehensive clarity/consistency pass. Simplified the Section 8 diagram-title pattern from `Figure TYPE-NUMBER — Description` to `Figure NUMBER — Description` to match all three worked examples in Sections 8 and 16, none of which used a type code. Aligned the Section 22 image-filename pattern placeholder (`figure-number` → `fig-NN`) to match its own instantiated example (`fig-01`). Added the `AL_A01_` system prefix to `Button_Outside` in the Section 19 control-logic example, matching every sibling block name in the same diagram and table. Restored the full canonical term "Timer Block" (was "Timer") in the Section 6 diagram-type table per `SEEH-STD-004`. No engineering content, diagram standards, blueprint requirements, or document ID changed. Release blockers identified in the prior Release Review (owner confirmation of Section 24's Tested Status vocabulary; unconfirmed `SEEH-STD-002`/`SEEH-STD-005` cross-checks) remain open and are unaffected by this pass. |
| 0.2.4 | 2026-07-07 | Document Owner (recorded by Claude / Technical Editor) | Document owner reviewed and confirmed the Section 24 "Tested Status" resolution introduced in 0.2.2: Quality Levels (Bronze/Silver/Gold/Platinum) correctly describe the blueprint design's build/test maturity, which is distinct from the document's own lifecycle state tracked separately in the header `Status` field (Draft/Review/Released). This closes the release blocker raised in the prior Release Review requiring owner sign-off on that judgment call. No document content changed; this entry records governance confirmation only. Two release blockers remain open: naming compliance cannot be independently verified against `SEEH-STD-002`, and testing/verification references cannot be independently verified against `SEEH-STD-005`, as neither document was available for cross-check. |
| 0.2.5 | 2026-07-07 | Ian Comings / Human Project Lead | Promoted Status from Draft to Released following completed Technical Edit, Standards Audit, and Release Review passes. Confirmed Section 24 uses Quality Levels for blueprint Tested Status because it describes engineering-design maturity rather than document editorial state. Cross-check against `SEEH-STD-002` completed; full verification against `SEEH-STD-005` is deferred until that standard is released. No content changes since 0.2.4. |
