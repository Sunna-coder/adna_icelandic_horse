# Comments on Ahmed et al. (under review) — Manuscript v1, 17 March 2026

*Prepared for Sigríður Sunna Ebenesersdóttir as co-author reviewing the manuscript in the context of her Rannís postdoctoral fellowship application.*

---

## Overview

**Full title:** "Different breeding traditions shaped horse genetic diversity within and outside Asia"

**Authors (relevant to this application):** Hanin Ibrahim Ahmed*, Gabriel Renaud, Kristján H.S. Moore, Susanna Sawyer, Pablo Librado, Andaine Seguin-Orlando, Ólafur Þ. Magnússon, Hannes Eggertsson, Hákon Jónsson, **Sunna Ebenesersdóttir**, ..., Kári Stefánsson*, **Agnar Helgason**\*$, **Ludovic Orlando**\*$

[Claude comment: Sunna is co-author (line 4–5). Agnar Helgason is a corresponding author and equal contributor. Ludovic Orlando is also a corresponding author. This is directly relevant to establishing the collaboration in the Rannís application: the working relationship with Orlando is documented at the author-list level, and Agnar Helgason's role as co-PI for the Rannís application is consistent with his corresponding-author status here.]

**Status:** Under review (manuscript dated 17 March 2026; submitted to an unnamed journal — journal name not stated in this version).

[Claude comment: The Rannís bibliography currently lists this as "Ahmed et al. (under review)" without a journal name. Before submission of the Rannís application, confirm whether the journal name can be given — some journals permit authors to name the journal during review; others do not. If it has been accepted by submission date, update the bibliography entry with journal, volume, and DOI. The Rannís bibliography note already flags this, but it remains unresolved.]

---

## Abstract — Summary and Comments

**Content:** The paper characterises global patterns of horse genetic diversity from 25.9 million phased genotypes in **901 horse genomes** worldwide, with historical tracking via imputation into **376 ancient specimens**. Key findings: distinct breeding traditions across Eurasia already apparent by ~3,750 ya; Asian breeds have larger effective sizes and significant Przewalski introgression; outside Asia, horses remained poorly differentiated until ~700–1,350 ya, when five of seven distinctive genetic ancestries characterising modern breeds emerged.

[Claude comment: The abstract gives the reference panel size as **901 modern** and **376 ancient** genomes. The Rannís draft (v10, Section A and Section B) consistently uses these same numbers — "901 modern + 376 ancient horse genomes" — which is correct and directly citable from this abstract. No discrepancy.]

[Claude comment: The abstract says five of *seven* distinctive genetic ancestries emerged in the last 700–1,350 years. The paper identifies seven total: NORD, BRIT, DRAFT, THOR, ARAB, MONG, and PRZW. Of these, five emerged recently (NORD ~810 CE, DRAFT ~884 CE, ARAB ~608–722 CE, THOR ~1295 CE, and BRIT ~1029 BCE — though BRIT actually predates the others by over a millennium, so this count needs scrutiny; see Results section below). This framing ("five of seven") is the paper's own formulation and safe to cite.]

---

## Introduction — Summary and Comments

**Content:** Sets context of horse domestication, the DOM2 lineage originating in the Pontic-Caspian steppes in the late third millennium BCE, rapid spread across Eurasia, and extinction of wild lineages. Notes that horses are second only to humans in published ancient genomes but that modern horse population genomics has lagged behind other livestock. States that 368 new genomes were generated, analysed with 543 previously published, to yield 901 total; these plus 376 ancient genomes form the study dataset.

**Key numbers to note:**
- 368 new genomes sequenced + 543 previously published = **911 total modern horses with one donkey outgroup = 912 genomes for joint calling** (line 89–90), but after QC filtering the diversity panel = **901 modern horses** (line 97)
- 376 previously published ancient DOM2 genomes (line 110)
- Average depth of new genomes: 27.00-fold, range 8.02–72.71-fold (line 76–77)
- Ancient genomes: minimum 0.75-fold depth of coverage (line 110–111)

[Claude comment: The figure of 376 ancient genomes is used consistently in the main text (abstract, Results, Discussion) and that is what should be cited in the Rannís application. The Rannís draft v10 correctly uses 376 throughout. However, note that the MEMORY.md mentions "376/381 ancient genomes" as something to check — the manuscript uses 376 only (not 381) in all main-text occurrences. If 381 appears anywhere it may be in a supplementary table; check Table S2 directly if precise numbers matter for a specific claim.]

[Claude comment: The Introduction at line 65–66 states the paper demonstrates "the value of a new haplotype reference panel used for accurate genotype imputation into 376 ancient horses." This directly supports the Rannís claim that Orlando's lab provides "the validated imputation pipeline" — this paper is the validation.]

---

## Results

### Genome Dataset

**Content:** Two panels constructed: (1) "high-quality" panel from 415 horses at ≥20× depth, yielding 22,579,858 biallelic SNPs; (2) "diversity" panel from 901 modern horses (adding 486 more at ≥8× depth), yielding 25,900,111 biallelic SNPs. Panels phased using BEAGLE (ref 17 = Browning et al. 2018). High concordance between phased and unphased genotypes (r ≥ 0.94). The diversity panel contains 38.61× more SNPs than current high-density equine genotyping arrays.

376 ancient DOM2 genomes (min 0.75× depth) were compiled from previously published sources (refs 3, 4, 6, 10, 20–22) and imputed using the diversity panel. Imputation performance was excellent: R² >0.996 for modern data, >0.956 for ancient data. Genotype error rates below 0.22% (modern) and 1.59% (ancient, at MAF ≥5%). Post-mortem DNA damage had minimal impact on imputation performance.

Final imputed dataset: diploid genotypes for **10.7 million SNPs** (after discarding MAF <5%), spanning ~4,200 years, primarily Asia (N=163) and Europe (N=209), plus 1 Iron Age North Africa and 3 colonial America.

[Claude comment: **CORRECTION — GLIMPSE2 IS used in this paper.** The SI (lines 139–141) states: "The resulting BAM files were used for GLIMPSE2 (28, 29) imputation using the 'diversity' panel of modern variants (N=25,900,111 SNPs)." This directly contradicts my earlier comment. GLIMPSE2 is the imputation tool used for all 376 ancient genomes in this paper. This means the Rannís application's claim that the paper "validates the imputation pipeline" is fully accurate — the exact same pipeline (GLIMPSE2 + Orlando reference panel) is what you propose to use. This is a strong point for the feasibility section. Note that BEAGLE is used in this paper for phasing the modern panel only, not for ancient imputation.]

[Claude comment: The 376 ancient genomes include samples from refs 3, 4, 6, 10, 20–22. These are: Librado 2021 (Nature), Librado 2024 (Nature), Fages 2019 (Cell), Gaunitz 2018 (Science), Todd 2023 (iScience), Taylor 2023 (Science), and Librado 2017 (Science). The ancient panel thus draws on multiple published datasets, not a single new collection. For the Rannís application's claim that the panel "includes ancient Scandinavian and British specimens from the Viking Age itself," you should verify this against Table S2 — the main text does not break down the 376 by region and time period. The Rannís draft already has a [Claude comment] flagging this verification need. This is still unresolved and important.]

### Global Patterns of Modern Genetic Diversity

**Content:** MDS and PCA reveal substantial structure, especially outside eastern and central Asia. Seven primary ancestry sources identified using haplotype sharing (SOURCEFIND, ref 28):

1. **PRZW** — Przewalski's horse ancestry (found in most DOM2 horses, higher in Asia)
2. **THOR** — Thoroughbred ancestry (most influential non-Asian source outside Asia)
3. **MONG** — Mongolian horse ancestry (predominant across Asia)
4. **ARAB** — Arabian ancestry
5. **NORD** — Nordic European breeds, **"such as Icelandic horses"** (main influence across Scandinavia)
6. **BRIT** — British native breeds (Dartmoor, Exmoor)
7. **DRAFT** — Continental draft breeds (Ardennes, Breton, Friesian)

Non-Asian breeds show significantly higher inbreeding coefficients (mean 0.15) than Asian (0.082). Asian horses show greater heterozygosity.

[Claude comment: **CRITICAL for grant application — Icelandic horses as exemplar of NORD ancestry.** The paper states at line 180: "One is typical of Nordic European breeds (NORD), *such as Icelandic horses*, with main influence across Scandinavia." This is the paper's one explicit mention of Icelandic horses in the Modern Diversity section. It establishes that Icelandic horses are the exemplar breed for the NORD component. The Rannís application (Section A, Aim 1 intro; Section B) cites this correctly. However, note the phrasing carefully: Icelandic horses are one *example* of NORD ancestry; the NORD component is also found in Scandinavian breeds more broadly. The Rannís draft does not overclaim this — it says "the NORD ancestry component defining Icelandic horses," which is slightly stronger than what the paper says. Consider softening to "characteristic of Icelandic horses and other Scandinavian breeds" to match the paper's own language.]

[Claude comment: **Sex bias in ancestry spread.** The paper identifies a significant sex bias (more stallion-mediated than mare-mediated) in the spread of both Przewalski's ancestry (PRZW) and Thoroughbred ancestry (THOR). This methodological point (using ΔAdmix to measure sex bias) is potentially relevant to Aim 3 of the Rannís application if you want to test for sex-biased breeding practices in ancient Icelandic horses. Worth noting as a potential analytical approach, though it is not mentioned in the current Rannís draft.]

### Temporal Patterns of Genetic Diversity

**Content:** The 376 ancient genomes span ~4,200 years of horse variation in Asia (N=163) and Europe (N=209). Limited genetic structure among ancient horses before 675 CE — they cluster near modern Asian breeds. The earliest specimen significantly departing from the ancient cluster is radiocarbon dated to 726 CE (675–777 CE) from Byzantine Turkey (Yenikapi).

**Key timing findings:**
- Asian–European breeding divergence detectable by ~3,750 ya
- Major differentiation between modern breeds emerged in the last ~1,300 years
- Full extent of modern divergence reached only within the last ~400 years
- **ARAB ancestry** began increasing from ~608–722 CE
- **NORD ancestry** emerged around **~810 CE**, "coincident with the Viking era" (line 285–286)
- **DRAFT ancestry** rose around **~884 CE**
- **THOR ancestry** emerged ~400 years later (~1295 CE)
- **BRIT ancestry** emerged in continental horses much earlier (~1029 BCE) — Iron Age

Y-chromosomal analysis: Crown haplogroups (daC_T) emerged no later than 204 BCE (350–58 BCE), with a burst after 726–1012 CE, consistent with increasingly sex-biased breeding. Mitochondrial diversity remained high throughout.

Inbreeding: minimal in ancient horses (only 5.59% with F >0.10 across 4,000 years); widespread among modern horses (50.86%). Inbreeding practices became common during the 20th century.

**Demographic history:** Effective sizes (proxied by heterozygosity) diverged: Asia maintained larger effective sizes throughout. Outside Asia, comparable levels reached ~256 CE, maintained through Middle Ages, then declined ~800 ya. This recent demographic decline in non-Asian breeds (including BRIT, DRAFT, NORD) aligns with modern breed formation.

[Claude comment: **NORD emergence at ~810 CE — the key claim for the Rannís application.** This is stated at lines 285–286: "First, NORD, characteristic of Scandinavian breeds, which emerged around ~810 CE (Fig. 4D), coincident with the Viking era (37)." Reference 37 is Forte, Oram, Pedersen (2005), *Viking empires* (Cambridge University Press). The Rannís application (Section A) cites "NORD ancestry component defining Icelandic horses emerged around 810 CE (Ahmed et al., under review)" — this is correctly stated. The ~810 CE date is specific to this analysis. The framing in the Rannís draft is accurate.]

[Claude comment: **What "emerged ~810 CE" means.** The paper does not explain exactly how this date is estimated — it refers to Fig. 4D, which is not in this manuscript PDF (figures are in a separate file). The date is presumably derived from the temporal series of ancient genomes (when the NORD component first becomes detectable at meaningful frequency in imputed ancient specimens). It is worth checking in the SI or figures whether this is a point estimate or a range with confidence intervals. If it carries uncertainty, citing it as "approximately 810 CE" (as the paper itself does) is appropriate — do not cite it with false precision.]

[Claude comment: **The ~800 ya demographic decline in non-Asian breeds.** The paper reports that effective sizes declined outside Asia ~800 ya (i.e., approximately 1200 CE). This is explicitly linked to breeds defining the BRIT, DRAFT, and NORD ancestries (line 237–239). For the Rannís application this is relevant background: the Icelandic horse, as a NORD-ancestry breed, underwent this broader European effective size decline. However, Iceland's settlement was in 870 CE — so the Icelandic population was already in place before the ~1200 CE decline. This makes it interesting to ask whether Icelandic horses show the same decline signal (from isolation and repeated bottlenecks) or a different pattern. The Rannís draft's Aim 2 (demographic history) is well-positioned to address this.]

[Claude comment: **Number of ancient European specimens.** The paper states: "It primarily spans the last ~4,200 years of horse variation in Asia (N=163) and Europe (N=209)" (line 123–125). These 209 European ancient genomes are the comparator population available to you for Aim 1. None are from Iceland or the North Atlantic (this is confirmed by the statement at line 124 that it also includes "one genome from Iron Age northern Africa and three from colonial America" — no Iceland). This absence is the central gap your project fills, and it is correctly characterised in the Rannís application.]

[Claude comment: **No ancient Icelandic horses in the Ahmed et al. panel.** The manuscript does not include any ancient Icelandic horse specimens in its dataset. The two Icelandic horses that appear in Fages et al. 2019 (VHR031 and VHR102) may or may not be among the 376 ancient genomes here — the main text does not specify. Check Table S2 to confirm whether VHR031 or VHR102 are included. If they are, note that they were sequenced at 0.08× and 0.18× coverage, which is at the low end of the 0.75× minimum stated for this panel — it is possible they were excluded on depth grounds. This matters for the Rannís claim about the panel providing "direct comparators for Aim 1."]

---

## Discussion — Summary and Comments

**Content:** The paper frames its dataset as "a new era for genetic research in horses." Key methodological claims: the imputation approach represents an important advance over current genotyping arrays; time-stamped data enables selection candidate identification.

Substantive conclusions: (1) DOM2 expansion from the Pontic-Caspian steppes followed two separate waves, one to Asia and one to Europe. (2) Asian breeding maintained larger effective sizes, more ancestral variation, and Przewalski admixture; outside Asia, breeds are more differentiated and homogeneous. (3) Iron Age European ancestry is preserved in modern British breeds (Dartmoor, Exmoor). (4) Modern continental Europe is shaped by ancestries that emerged between 608 and 1295 CE. (5) Present-day divergent horse breeds are "a surprisingly recent phenomenon, emerging only during the last 700-1350 years."

[Claude comment: The Discussion at lines 340–342 frames the NORD and DRAFT components as having "likely emerged in Europe." This is presented as a conclusion without explicit hedging, but in the Results the paper says these emerged "~810 CE" and "~884 CE" respectively — it does not pinpoint a specific geographic origin within Europe (only that the timing is Viking era / early medieval). The claim that NORD "likely emerged in Europe" is reasonable but is inference; the paper does not rule out origin elsewhere and expansion into Europe. For the Rannís application, the claim about NORD ancestry is strongest when framed as "emerged around 810 CE, coincident with the Viking era," not as "emerged in Scandinavia specifically."]

[Claude comment: The Discussion does not specifically discuss Icelandic horses beyond their role as exemplars of NORD ancestry. The statement in the Rannís application that "none of these global studies has generated population-level data from Iceland itself, or from any other North Atlantic horse population" is fully supported — Iceland is not in this dataset and the paper makes no claims about Icelandic horse history at population level.]

---

## Methods (not fully in this manuscript PDF)

[Claude comment: The main text describes the methods at a high level: GraphTyper (ref 16 = Eggertsson et al. 2017, *Nature Genetics*) for joint variant calling; BEAGLE (ref 17 = Browning et al. 2018) for phasing and imputation; ADMIXTURE (ref 23 = Alexander et al. 2009); SOURCEFIND (ref 28 = Chacón-Duque et al. 2018) for ancestry source inference; Alpha statistic (ref 29 = Loog et al. 2017) for mobility estimation. Full methods details are likely in the SI. The EquCab3 reference genome is not explicitly named in this main text — confirm in the SI or supplementary tables that EquCab3 was used, since the MEMORY.md notes that EquCab3 is used for the Ahmed et al. mapping pipeline at deCODE.]

---

## Acknowledgements — Summary and Comments

**Content:** Key funding acknowledgements: H.I.A. supported by Ibn-Rushd Postdoctoral Fellowship (KAUST). G.R. supported by Marie-Curie Individual Fellowship (MSCA-EF-752657). **S.S. (Sunna) supported by an EMBO Long-Term fellowship.** LO supported by ERC Horizon 2020 (PEGASUS, grant 681605) and Horizon Europe (Horsepower, grant 101071707).

[Claude comment: Sunna's EMBO Long-Term fellowship is acknowledged here — this is a citable indicator of her track record and funding history relevant to the career development section (Section G) of the Rannís application, if not already mentioned there.]

[Claude comment: LO's Horsepower grant (Horizon Europe 101071707) is listed here. This is the active ERC grant funding the Orlando lab's horse genomics programme, of which this paper is presumably a major output. This grant provides the institutional context for Orlando's continued involvement as a collaborator for your Rannís project — it demonstrates his lab has sustained, funded capacity in this area.]

---

## References — Notes on Key Citations

[Claude comment: Ref 3 = Librado et al. 2021 (*Nature* 598, 634–640) — "origins and spread of domestic horses from the Western Eurasian steppes." The Rannís draft (Section B) says Librado et al. 2021 used "a large dataset of ancient and modern horse genomes" with a [Claude comment] asking to verify the specific number against the published paper. This paper (Ahmed et al.) at line 63 states they analysed "368 modern horses ... along with 543 previously published genomes" — it does not give Librado 2021's numbers. You will need to check Librado 2021 directly.]

[Claude comment: Ref 6 = Fages et al. 2019 (*Cell* 177, 1419–1435). This is already well-cited in the Rannís draft. The two Icelandic horses (VHR031, VHR102) from Nistelberger et al. 2019 appeared in Fages et al. 2019. Check whether these same specimens appear in Ahmed et al.'s Table S2 (i.e., whether they are among the 376 ancient genomes used here).]

[Claude comment: Ref 10 = Gaunitz et al. 2018 (*Science* 360, 111–114). This is the paper demonstrating that Botai horses are ancestors of Przewalski's horses, not modern domestic horses. The Rannís draft (Section B) cites this correctly. The Rannís draft also has a [Claude comment] asking which specific extraction protocol paper is cited in the Science 2018 supplementary — that is Gaunitz et al. 2018, not Ebenesersdóttir et al. 2018. Please re-read: the Rannís comment refers to the *Ebenesersdóttir et al. 2018 Science* supplementary (the ancient Icelandic human paper), not to Gaunitz et al.]

---

## Summary: Key Numbers to Cite Accurately in the Rannís Application

| Claim in Rannís draft | What this manuscript says | Status |
|---|---|---|
| 901 modern horse genomes | 901 (diversity panel, after QC) | Confirmed correct |
| 376 ancient horse genomes | 376 (main text, abstract, Results) | Confirmed correct; check if SI differs |
| NORD ancestry emerged ~810 CE | "~810 CE" (line 285) | Confirmed correct; cite as approximate |
| Icelandic horses are exemplar of NORD | "such as Icelandic horses" (line 180) | Confirmed; note it's one example among Scandinavian breeds |
| Orlando is active co-author | Yes, corresponding author | Confirmed |
| Agnar Helgason is active co-author | Yes, corresponding author | Confirmed — strengthens Rannís co-PI relationship |
| Panel includes Viking Age specimens | Not stated in main text | **Unverified — check Table S2** |
| No Icelandic horses in this panel | Not stated explicitly | **Probable but check Table S2 for VHR031/VHR102** |
| Panel has 25.9M SNPs | 25,900,111 biallelic SNPs (diversity panel) | Confirmed |
| GLIMPSE2 used for ancient imputation | Yes — SI lines 139–141 confirm GLIMPSE2 used | **Confirmed — pipeline fully validated** |
| EquCab3 reference genome | Yes — SI lines 80–82 confirm EquCab3 | Confirmed |
| wIBS method available | Yes — SI lines 198–207; references Jagadeesan et al. (ref 33) | Confirmed — same method to use in Rannís project |
| VHR031/VHR102 in panel | Not present — Iceland not mentioned anywhere in SI | **Confirmed absent** |
| Reference panel journal name | Not stated (under review) | **Update when accepted** |

---

## Open Questions Requiring Verification Before Rannís Submission

1. **VHR031 and VHR102 are NOT in this panel — CONFIRMED.** A full-text search of the SI finds no mention of "Iceland," "Icelandic," "VHR031," or "VHR102." The two Icelandic specimens from Fages et al. 2019 are absent from the Ahmed et al. ancient dataset. The VHR-prefix samples that do appear in the SI are VHR010_UK_600, VHR011_UK_600, and VHR062_UK_600 — all labelled as UK specimens from ~600 CE (probably from Jorvik/York or similar Viking Age British contexts). These are relevant as British comparators for Aim 1, but they are not Icelandic. **The Rannís claim that the panel provides "direct comparators" for the Icelandic horse is valid — British and Scandinavian ancient horses are present — but no ancient Icelandic horses are in this panel.** Check Table S2 (xlsx) directly to confirm the full list of Scandinavian specimens.

2. **376 vs 381 — RESOLVED.** The SI (lines 131–132) states: "The sequence data underlying the genetic characterization of **381** ancient horse samples were obtained from previously published studies." After QC filtering (lines 195–196): "leaving a total of N=**376** individual ancient genomes from downstream analyses." So 381 = initial compiled set; 376 = post-QC final set used in all analyses. The Rannís application should consistently use **376** (the number actually analysed), which it already does.

3. **Fig. 4D:** This figure shows the temporal trajectory of NORD ancestry emergence. It is in the figures PDF (Ahmed-20260317-Figures.pdf or .docx), not in this manuscript. Review this figure to understand whether the ~810 CE estimate has confidence intervals, and whether the signal is based on a small number of ancient specimens (if so, it carries more uncertainty than a precise date implies).

4. **EquCab3 — CONFIRMED.** SI lines 80–82: "The trimmed, high-quality paired-end reads were mapped against the horse reference genome EquCab3 (7), appended with the Y-chromosome contigs from Felkel et al. (8) and the mitochondrial reference genome (NC_001640)." EquCab3 is confirmed as the reference genome for both modern and ancient sample mapping.

5. **Journal status:** Before the Rannís submission deadline, confirm whether this paper has been accepted and update the bibliography entry accordingly.

6. **wIBS method — confirmed and relevant.** The SI (lines 198–207) describes wIBS (weighted Identity-By-State) analysis as a primary method for population structure. It is computed following Jagadeesan et al. (ref 33) and applied three times: modern only, modern+ancient, and ancient only. The Rannís Section C now includes wIBS as a planned method — this is correct and directly mirrors what this paper does with the same reference panel.

7. **SOURCEFIND method (ref 28):** The paper uses SOURCEFIND (Chacón-Duque et al. 2018, *Nature Communications*) — a method developed for human population genetics — to assign ancestry sources. This is methodologically novel for horses. If reviewers ask how NORD ancestry is defined, the answer involves this haplotype-sharing approach applied to modern horse genomes, not a simple ADMIXTURE component. Be prepared to explain this if asked in the grant interview.
