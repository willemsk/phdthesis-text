# Computational modeling of biological nanopores

PhD dissertation, Kherim Willems, December 2020. Defended January 8th, 2021.

This is the home of my PhD thesis, which revolves around the modeling of biological nanopores.

Licensed under [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/).

## Releases (PDFs)

* [Lastest GitHub release (v1.3)](https://github.com/willemsk/phdthesis-text/releases/tag/v1.3)
* arXiv mirror

## Thesis outline

* **Part I. Literature and Objectives**
  * Chapter 1. Biological nanopores
  * Chapter 2. Aims
* **Part II. Results**
  * Chapter 3. Equilibirum electrostatics of biological nanopores
  * Chapter 4. Trapping of a single protein inside a nanopore
  * Chapter 5. An improved PNP-NS framework
  * Chapter 6. Modeling the transport of ions and water through ClyA
* **Part III. Conclusions**
  * Chapter 7. Conclusions and perspectives
* **Part IV. Appendices**
  * Appendix A. Supplementary information: Trapping of a single protein inside a nanopore
  * Appendix B. Supplementary information: An improved PNP-NS framework
  * Appendix C. Supplementary information: Modeling the transport of ions and water through ClyA

## A not-so-brief summary

Throughout our history, we, humans, have sought to better control and understand our environment. To this end,
we have extended our natural senses with a host of sensors—tools that enable us to detect both the very large,
such as the merging of two black holes at a distance of 1.3 billion light-years from Earth, and the very
small, such as the identification of individual viral particles from a complex mixture. This dissertation is
devoted to studying the physical mechanisms that govern a tiny, yet highly versatile sensor: the biological
nanopore. Biological nanopores are protein molecules that form nanometer-sized apertures in lipid membranes.
When an individual molecule passes through this aperture (*i.e.*, "translocates"), the temporary disturbance
of the ionic current caused by its passage reveals valuable information on its identity and properties.
Despite this seemingly straightforward sensing principle, the complexity of the interactions between the
nanopore and the translocating molecule implies that it is often very challenging to unambiguously link the
changes in the ionic current with the precise physical phenomena that cause them. It is here that the
computational methods employed in this dissertation have the potential to shine, as they are capable of
modeling nearly all aspects of the sensing process with near atomistic precision.

Beyond familiarizing the reader with the concepts and state-of-the-art of the nanopore field (**Chapter 1**),
the primary goals of this dissertation are fourfold:

* Develop methodologies for accurate modeling of biological nanopores;
* Investigate the equilibrium electrostatics of biological nanopores;
* Elucidate the trapping behavior of a protein inside a biological nanopore;
* Mapping the transport properties of a biological nanopore.

In the first results chapter of this thesis (**Chapter 3**), we used 3D equilibrium simulations, based
on numerical solutions of the Poisson-Boltzmann equation, to investigate the electrostatic properties of the
pleurotolysin AB (PlyAB), cytolysin A (ClyA), and fragaceatoxin C (FraC) nanopores. In particular, we showed
that a few, or even a single, charge reversal mutations can have a high electrostatic impact, resulting in a
strongly reduced or even reversed electro-osmotic flow. Additionally, our simulations indicated that lowering
the electrolyte pH significantly reduced the influence of negatively charged amino acids, whilst leaving that
of the positively charged groups untouched. To elucidate the propensity of the FraC and ClyA pores to
translocate DNA, we computed the electrostatic energy costs associated with ssDNA and dsDNA translocation
through them. This revealed that the precise placement of positive charges can enable translocation of DNA by
either significantly reducing the magnitude of the electrostatic energy barrier, or by allowing the DNA strand
to penetrate deep enough within the pore to build up sufficient force to overcome it. Even though the
simulations performed in this chapter show that some of the key characteristics of biological nanopores can be
derived from their equilibrium electrostatics, it also revealed that a full comprehension requires the
addition of nonequilibrium forces.

The next chapter (**Chapter 4**) revolves around the immobilization (*i.e.*, "trapping") of a single protein
molecule within a nanopore, which is of importance for applications such as single-molecule enzymology. To
this end, we studied the average dwell time of tagged dihydrofolate reductase (DHFR<sub>tag</sub>), a small
protein modified with a positively charged polypeptide at its C-terminus, within ClyA. Concretely, by
manipulating its charge distribution, we succeeded in increasing its average dwell time by several orders of
magnitude. Further, we derived an analytical transport model for the escape of DHFR<sub>tag</sub> from the
pore, based on the crossing of the steric, electrostatic, electrophoretic, and electro-osmotic energy barriers
located at either side of pore. A systematic study of the dwell times as a function of voltage and tag charge,
together with extensive equilibrium electrostatic simulations, allowed us to parameterize this double barrier
model, revealing properties that are difficult to determine experimentally, such as the translocation
probabilities and the force exerted by ClyA's electro-osmotic flow on the protein (≈9 pN at −50 mV). The
relative simplicity of the double barrier model, and the fact that it contains no explicit geometric
parameters of DHFR<sub>tag</sub>, suggested that our approach may be generalizable to other small proteins.

In the final chapters, we developed a novel continuum framework for modeling biological nanopores under
nonequilibrium conditions (**Chapter 5**) and subsequently applied it to the ClyA nanopore
(**Chapter 6**). Even though they are often qualitatively useful, the ability of continuum methods to
solve nanoscale transport problems in a quantitative manner is typically poor. To this end, we developed the
extended Poisson-Nernst-Planck-Navier-Stokes (ePNP-NS) equations, which self-consistently consider the
finite size of the ions, and the influence of both the ionic strength and the nanoscopic scale of the pore on
the local properties of the electrolyte. By numerically solving the ePNP-NS equations for a computationally
efficient model of ClyA, we were able to simulate the nanofluidic properties of the pore for a wide range of
experimentally relevant bias voltages and salt concentrations. We found the simulated ionic conductivities to
be in excellent agreement with their experimentally measured counterparts, suggesting that our model is
physically accurate. Hence, we used our simulations to provide detailed insights into the true ion
selectivity, the ion concentration distributions, the electrostatic potential landscape, the magnitude of the
electro-osmotic flow field, and the internal pressure distribution. As such, the ePNP-NS equations provide a
means to obtain fundamental new insights into the nanofluidic properties of biological nanopores and paves the
way towards their rational engineering.

In this dissertation, we showed that simulations, in combination with systematic experiments, can be used as
computational `microscopes' to reveal the physical phenomena that underlie nanopore-based sensing. Whereas
simple equilibrium electrostatics are already highly instructive, it is clear that the complex interplay
between the nanopore and the translocating analyte molecule mandates a nonequilibrium approach that is both
rigorous and self-consistent, such as the ePNP-NS equations. Further improvements could elevate this framework
from an after-the-fact analysis method to a powerful design tool for nanopore researchers, providing a means
to automatically screen the properties of novel nanopores, or to predict the ionic current signal produced by
arbitrary molecules.

## Acknowledgments

Special thanks to [Wannes Meert](http://www.wannesm.be/) for providing the LaTeX template at [github.com/wannesm/adsphd](https://github.com/wannesm/adsphd).
