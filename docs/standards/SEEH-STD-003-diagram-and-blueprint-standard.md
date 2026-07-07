# SEEH-STD-003 — Diagram and Blueprint Standard

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-STD-003  
**Revision:** 0.1.0  
**Status:** Draft  
**Last Updated:** 2026-07-07  

---

## 1. Purpose

This standard defines how diagrams and blueprints are created for SEEH documents.

Diagrams should make construction easier, not more confusing.

## 2. Primary Diagram Format

ASCII diagrams are the primary diagram format because they are:

- Easy to edit
- Easy to view on tablets
- Easy to store in Markdown
- Compatible with Git diffs

Screenshots and rendered images may supplement ASCII diagrams but should not replace them.

## 3. Required Diagram Information

Each blueprint diagram should include:

- Orientation
- Dimensions
- Scale
- Legend
- Important block labels
- Coordinate reference if applicable

## 4. Orientation Labels

Use clear orientation markers.

Example:

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

## 5. Example Top View

```text
Top View — 3x3 Personnel Airlock

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

Legend:
D = Airtight Door
V = Air Vent
L = Indicator Light
W = Wall / armor block
```

## 6. Coordinate System

Use `X`, `Y`, and `Z` when coordinates are needed.

Recommended convention:

- `X` = left/right
- `Y` = vertical
- `Z` = forward/back

For airlocks, `Z+` should point toward the exterior unless otherwise stated.

## 7. Screenshots

When screenshots are used:

- Hide unnecessary HUD elements.
- Use consistent lighting.
- Crop irrelevant background.
- Label the image clearly.
- Place the image near the related instructions.

## 8. Diagram Review Checklist

Before releasing a diagram:

- Orientation is labeled.
- Legend is included.
- Dimensions are clear.
- Symbols are consistent.
- The diagram matches the written procedure.
- The diagram has been checked against an in-game build.

## 9. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
