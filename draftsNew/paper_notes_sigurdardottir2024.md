# Notes on Sigurðardóttir et al. (2024)
## Genetic diversity and signatures of selection in Icelandic horses and Exmoor ponies
*BMC Genomics 25:772. doi: 10.1186/s12864-024-10682-8*
*Authors: Heiðrún Sigurðardóttir, Michela Ablondi, Thorvaldur Kristjansson, Gabriella Lindgren, Susanne Eriksson*
*Notes prepared 2026-04-09*

---

## What the study is

380 Icelandic horses (born 1993–2016, mostly from Iceland and Sweden) genotyped on the **670K Axiom Equine SNP array**. Compared with 280 Exmoor ponies. First high-density SNP study of the Icelandic horse. The VCF data are publicly available — Agnar has already downloaded them.

Sample caveat: the horses were **not a random population sample**. Half were selected for a mane growth GWAS; the other half were sampled at breeding field tests (i.e. pre-selected horses more likely to contribute to future generations). This may underrepresent regional diversity. Worth discussing with Jón Hallsteinn whether a more representative sample is available.

---

## Genetic diversity — headline findings

- **Heterozygosity:** H_O = H_E = 0.34 — comparable to other closed-stud-book breeds, and similar to other pony breeds. The Icelandic horse is **not unusually low in diversity** relative to other closed breeds. Agnar's point that the breed may be "surprisingly diverse" given its isolation history is consistent with this.
- **Genomic inbreeding (F_ROH):** mean 0.20 across the genome (all ROH ≥100 kb); individual range 0.07–0.30. When only longer ROH (≥500 kb) are counted, mean F_ROH drops to 0.08.
- **Most inbreeding is ancient:** the majority of ROH are in the short length class (0.1–1 Mb), which signal **distant, historical inbreeding** rather than recent close matings. Long ROH (>8 Mb, indicating recent inbreeding) are rare — only 125 of 380 horses carry any, and on average only 2 such ROH per animal.
- **Pedigree inbreeding (F_PED):** mean 0.03 — much lower than genomic estimate. Shows the pedigree record (which goes back ~8 generations) misses most historical inbreeding that the genomic data captures.

**Implication for the grant:** inbreeding in the Icelandic horse is real but predominantly ancient. The question of *when* it accumulated — founding bottleneck, Laki eruption, or gradual drift — cannot be answered from present-day data. That is exactly what the temporal ancient DNA dataset will resolve.

---

## Effective population size — the two bottlenecks

- Current Ne = **125 individuals** (most recent generation). This is the number cited in the grant.
- Ne has been **stable for the last 3–4 generations** (oscillating 123–127), suggesting the modern breeding programme has halted further decline.
- Over 60 generations, the Ne trajectory shows **two pronounced drops:**
  1. ~23 generations ago (~1780s) = **Laki/Skaftáreldar eruption of 1783**, which reduced the horse population by ~75%
  2. ~8 generations ago (~1940s) = **mechanisation of Iceland** — horses lost their working role, breeding goal shifted to riding horses
- Pedigree-based Ne: 95–103 (based on all Icelandic horses born 2020) — slightly lower than genomic estimate, consistent with a mating pool that is a subset of the registered population.

**Implication for the grant:** the two bottlenecks are detectable in the present-day genome, but without ancient samples we cannot see anything that happened before ~230 years ago (the Laki horizon), or between the founding in 870 CE and then.

---

## Signatures of selection — what was found

**Strongest signal in Icelandic horses (>90% of individuals):**
- **ECA23 — DMRT3** (tölt/gait locus). The largest ROH island in the breed by far. Present in over 90% of sampled horses. Already at 77% frequency in 9th–11th century specimens (Wutke et al. 2016). When it reached fixation is unknown — a direct question for the temporal dataset.

**Other ROH islands private to Icelandic horses (>70%, performance-related):**
- ECA1 — DOCK8, EDNRB, NEURL1, SLAIN1 (learning, behaviour, neurological function)
- ECA17 — FOXO1 (see below — shared with Exmoor pony)
- ECA23 also carries DMRT3-adjacent loci

**Shared ROH islands with Exmoor pony (both breeds >70%) — natural selection for harsh environment:**
- **ECA17 — FOXO1** (metabolism, insulin signalling — EMS locus). Shared with Exmoor pony, suggesting this is adaptation to nutritional stress rather than breed-specific artificial selection. Directly relevant to Aim 3: the temporal dataset can test whether this allele was present at founding or rose under selection during specific famine periods (e.g. Laki 1783).
- ECA9 — body size
- ECA8/19 — immune system (CYRIB)

**Private ROH islands in Exmoor ponies:** coat colour (ASIP, OCA2, TBX3), immunity (LYG1, LYG2), fertility (TEX14, SPO11) — not relevant for the Icelandic horse grant.

---

## The critical gap — what this paper cannot tell you

The 670K chip data are the best available picture of the **present-day breed endpoint**, but they:
- Cannot say when diversity was lost (founding? Laki? centuries of drift?)
- Cannot quantify the proportional contribution of founding source populations
- Cannot distinguish founding-era alleles from post-founding selection
- Have **never been analysed in the context of global horse variation or ancient horse genomes** — Agnar explicitly noted this in his comments on the grant draft

Your project is the first to place this dataset in a global and historical context.

---

## Key numbers for the grant

| Statistic | Value | Source |
|-----------|-------|--------|
| Sample size | 380 horses | Sigurðardóttir et al. 2024 |
| Array | 670K Axiom Equine | " |
| SNPs after QC (heterozygosity/Ne analysis) | 360,755 | " |
| SNPs after QC (ROH analysis) | 550,405 | " |
| Ne (last generation, genomic) | 125 | " |
| Ne (pedigree-based, born 2020) | 95–103 | " |
| Mean F_ROH (all ROH ≥100 kb) | 0.20 | " |
| Mean F_ROH (ROH ≥500 kb) | 0.08 | " |
| Mean F_PED | 0.03 | " |
| Strongest selection signal | ECA23 / DMRT3 (>90% horses) | " |
| Shared signal with Exmoor pony | ECA17 / FOXO1 | " |
| Bottleneck 1 | ~23 gen ago / Laki 1783 | " |
| Bottleneck 2 | ~8 gen ago / mechanisation ~1940s | " |

---

## Is this adequately reflected in the Rannís draft (v25)?

**Yes, the key points are covered:**

- Section B explicitly states: *"these chip data have not yet been analysed in the context of global horse variation or ancient horse genomes — a gap this project will close"*
- Ne=125 and the two bottlenecks are described in Section B
- DMRT3 ROH island (>90% horses) mentioned in Aim 3 and Section B
- FOXO1 shared with Exmoor ponies mentioned in Aim 3 as candidate for metabolic thriftiness selection
- The nuanced framing (Icelandic horses near ancient horses in global PCA, not simply "low diversity") is in Section B following Agnar's Comment 32

**One point not in the grant (intentionally):** the sample bias (breeding field test horses, not random population sample). This is a limitation of the Sigurðardóttir data, not a gap the grant needs to highlight.
