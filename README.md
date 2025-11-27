# ELENA – Dimensionally Reduced Potentials (Abelian Higgs & SM)

This repo contains my extensions to **ELENA** for comparing **dimensionally reduced (3D)** effective potentials (from **DRalgo**) with their corresponding **4D thermal potentials** for:

- Abelian Higgs model  
- Standard Model

The 3D potentials are first obtained in **Mathematica** using DRalgo and then translated into **Python** via a custom Mathematica → Python generic potential translator. A minimal custom model class mimics ELENA’s `model` interface to plug these potentials into the existing code.

---

## Structure

```text
ah_pot.m              # DR (3D) Abelian Higgs potential from DRalgo (Mathematica)
SM_pot.m              # DR (3D) Standard Model potential from DRalgo (Mathematica)

AH_elena.py           # Python implementation of AH DR potential + 4D comparison
SM_elena.py           # Python implementation of SM DR potential + 4D comparison

potential_3d.py       # Generic helpers for 3D potentials (matching, numerics, etc.)
model_template.py     # Custom model class mimicking ELENA’s internal model

Mathematica_Plots.pdf # Reference plots of AH DR potential from Mathematica


## Prerequisites

You will need:

- **Python 3** with
  - `numpy`
  - `matplotlib`
  - `jupyter` (or JupyterLab)
- A working installation of **ELENA** (cloned and importable in the same environment)
- **Mathematica** if you want to re-run `DRalgo.nb`


> The notebooks assume that ELENA can be imported as a Python package (e.g. `import elena` or similar, depending on your local setup).

---
