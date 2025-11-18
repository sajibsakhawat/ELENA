# ELENA – DRalgo → ELENA bridge for Abelian Higgs

**Translating DRalgo effective potentials to ELENA for phase transition and nucleation analysis**

This repository is a small, self-contained example of how to take an effective potential obtained with **DRalgo** (in Mathematica), and use it inside **ELENA** to:

- implement the potential in a convenient format,
- plug it into a **custom ELENA model class**, and  
- run the **standard ELENA benchmark routines** to obtain plots and thermal quantities.

The working example is the **Abelian Higgs** model.

---

## Repository contents

- **`DRalgo.nb`**  
  Mathematica notebook running the **DRalgo** routines for the Abelian Higgs model and producing the effective (dimensionally reduced) 3D potential as a function of \( \phi \) and \( T \).

- **`ah_pot.m`**  
  Mathematica file containing the **Abelian Higgs 3D effective potential** exported from `DRalgo.nb`.  
  This is *not* a converter script; it is the actual potential implementation generated from DRalgo and then rewritten/extracted into a MATLAB function.

- **`ELENA_integration.ipynb`**  
  Jupyter notebook that:
  - defines a **custom ELENA model class** for the Abelian Higgs potential,
  - wires this model into ELENA’s standard routines, and
  - demonstrates how to **run ELENA using an externally provided potential** (in this case, the one coming from DRalgo via `ah_pot.m` / its Python equivalent).

- **`AH_ELENA_benchmark.ipynb`**  
  Jupyter notebook that:
  - uses ELENA’s **benchmark workflow** with the Abelian Higgs potential,
  - evaluates and **plots the potential** \( V(\phi, T) \) for different temperatures, and
  - **extracts thermal quantities** such as critical temperatures and characteristic phase-transition observables (e.g. minima, order parameter, tunnelling action \( S_3/T \), etc., depending on the cells you run).

---

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
