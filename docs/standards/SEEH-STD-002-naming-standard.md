# SEEH-STD-002 — Naming Standard

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-STD-002  
**Revision:** 0.1.0  
**Status:** Draft  
**Last Updated:** 2026-07-07  

---

## 1. Purpose

This standard defines naming conventions for blocks, groups, systems, documents, and examples used in SEEH.

Consistent naming makes systems easier to build, automate, debug, and maintain.

## 2. General Naming Format

Use:

```text
SYSTEM_AREA_NUMBER_COMPONENT
```

Example:

```text
AL_A01_Vent
```

Meaning:

- `AL` = Airlock
- `A` = Area or section
- `01` = System number
- `Vent` = Component

## 3. System Prefixes

| Prefix | Meaning |
|---|---|
| AL | Airlock |
| AT | Atmosphere |
| PW | Power |
| HY | Hydrogen |
| MH | Material Handling |
| CTL | Control System |
| IND | Industry |
| DEF | Defense |
| DCK | Docking |
| BAS | Base Design |
| SHP | Ship |
| STN | Station |
| FLT | Fleet |
| LCD | Display |
| LG | Lighting |

## 4. Block Names

Examples:

```text
AL_A01_Door_Outer
AL_A01_Door_Inner
AL_A01_Vent
AL_A01_Button_Outside
AL_A01_Button_Inside
AL_A01_LCD_Status
AL_A01_Light_Green
AL_A01_Light_Red
AL_A01_Controller
```

## 5. Group Names

Groups must begin with `GRP`.

Examples:

```text
GRP_AL_A01_All
GRP_AL_A01_Doors
GRP_AL_A01_Lights
GRP_AL_A01_LCDs
GRP_AL_A01_Controls
```

## 6. Area Codes

Area codes identify major ship or station sections.

Examples:

| Code | Meaning |
|---|---|
| A | Main base / primary section |
| B | Industrial section |
| C | Hangar or vehicle bay |
| D | Engineering |
| E | Medical or habitation |
| F | Defense perimeter |

Projects may define their own area map.

## 7. Numbering

Use two digits for system numbers.

Correct:

```text
AL_A01
AL_A02
AL_A03
```

Incorrect:

```text
AL_A1
AL_A2
AL_A3
```

## 8. Document IDs

Use:

```text
SEEH-FAMILY-NUMBER
```

Examples:

```text
SEEH-STD-001
SEEH-ATM-001
SEEH-PWR-001
EDR-0001
```

## 9. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
