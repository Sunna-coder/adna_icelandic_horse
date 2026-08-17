# Scientific Background

*This file is owned by Hannes + Sunna. Claude draws on this when drafting but should not edit it without explicit permission.*

---

## The Icelandic Horse

- Descended from horses brought by Norse settlers to Iceland in the late 9th century CE
- One of the world's oldest livestock import bans (~10th century, strengthened legally over time) has kept the population isolated for ~1,000 years
- All modern Icelandic horses derive from this founding stock with no outside admixture
- Known for unique gaits: tölt and pace (controlled by DMRT3 mutations)
- Generally robust but shows signs of inbreeding-related health vulnerabilities (sweet itch, EMS-like metabolic profiles, uveitis susceptibility)
- Population size: ~80,000–100,000 registered horses in Iceland; ~100,000 more abroad
- Legal import ban on foreign farm animals enacted in 1882, still in place today — precise date/citation for the isolation narrative
- Effective population size (N_e) estimated from microarray LD patterns at ~125 today, down from ~500 sixty generations ago (Sigurðardóttir et al. 2024) — a concrete quantitative baseline for Aim 3's isolation/drift analysis; our project would provide a more direct N_e estimate using IBD sharing in ancient horses themselves, rather than inferring backward from present-day data alone
- Key prior genetic work: Pálsdóttir et al. / Nistelberger et al. (2019), *J Archaeol Sci* — sexing of Viking Age Icelandic horses (see `background/papers/sexing_icelandicHorses_Palsdottir.pdf`); first genetic insights but insufficient depth for population genomics
- Recent complementary work from the Icelandic horse genetics group (Sigurðardóttir et al.): genetic diversity and selection signatures (2024, *BMC Genomics*); gait genetics beyond DMRT3, identifying RELN and STAU2 as new candidate genes (2023, *Genet Sel Evol*; 2025, *Sci Rep*) — useful evidence of an active, engaged local collaborator network

## The Applicant's Track Record (Sunna)

- PhD: Biological Anthropology, University of Iceland (2023)
- Research Scientist at deCODE Genetics (2013–2026), specialising in population structure and ancient DNA
- Key publication: Ebenesersdóttir et al. (2018), Science 360:1028–1032 — 88 ancient Icelandic genomes, methods directly transferable to horse project (see `background/papers/science.pdf`)
- Iceland2 manuscript (under preparation): 201 ancient Icelandic human genomes (870–2000 CE); Norse:Gaelic ancestry shift from 57:43 → 70:30 by ~1300 CE; IBD-based genealogical analysis
- Co-author on Ahmed et al. (under review) — horse genetic diversity paper with Orlando (see `background/Ahmed_et_al/`)

## The Host (Ludovic Orlando)

- CNRS Silver Medal laureate
- Founding director of the Centre for Anthropobiology and Genomics of Toulouse (CAGT), University of Toulouse, France
- World leader in ancient horse genomics: published key horse domestication papers in Nature, Science, Cell
- Developed a reference panel of >900 modern + ancient horse genomes for imputation-based analyses
- Co-author on Ahmed et al. (under review) with Sunna and Helgason

## Existing Icelandic Horse Data

**Sequencing libraries (from `background/horse_samples_decode.docx`):**
Seven samples with >10% endogenous DNA and remaining bone powder:

| Sample ID | Site | % Endogenous | Bone powder (g) |
|---|---|---|---|
| VHR031 | Granastaðir | 33.9 | 0.46 |
| VHR085 | Ytra-Garðshorn | 11.6 | 0.86 |
| VHR089 | Brimnes (Dalvík) | 39.8 | 1.15 |
| VHR093 | Sturluflötur | 10.4 | 0.78 |
| VHR100 | Böggvistaðir | 14.2 | 0.85 |
| VHR102 | Berufjörður | 31.7 | 0.63 |
| VHR105 | Leynir Cave | 29.5 | 0.55 (chunk) |

VHR105 has 3 existing libraries (VHR105E1bL2, VHR105E1bL3, VHR105E1bL4). Additional libraries may exist for other samples (check `background/mergeInfofreeze_horsesIceland.xlsx`).

**National Museum sample list (`background/Horses.docx`):**
~25 previously sampled/sequenced specimens with museum accession numbers; ~50+ additional candidates (burial contexts, cave deposits, medieval and modern). Dates range from settlement period (AD 800–1000) to 20th century. Compiled 2.6.2021.

## Key Methods

- **aDNA extraction**: Silica-based methods optimised for degraded material (Rohland & Hofreiter 2007); clean-lab protocols (deCODE Anthropology group)
- **Library preparation**: Illumina indexed libraries; adapter sequences per `pipeline/aDNAfastqMAPpe.sh`. Single-tube BEST protocol (Carøe et al. 2018) or single-stranded SCR protocol (Kapp et al. 2021) for highly degraded material
- **Mapping pipeline**: AdapterRemoval2 → BWA aln → Picard MarkDuplicates → mapDamage rescaling; runs on SLURM cluster
- **Genotype imputation**: GLIMPSE2 (Rubinacci et al. 2023) for low-coverage ancient genomes; used for humans in Iceland2, same approach applicable to horses with Orlando's reference panel. IMPUTE5 (Rubinacci et al. 2020) available for imputing WGS-level genotypes into microarray-genotyped present-day horses if needed. Joint genotype calling for panel construction typically via Graphtyper (Eggertsson et al. 2017); phasing via SHAPEIT5 (Hofmeister et al. 2023)
- **Population genomics**: PCA (Patterson et al. 2006), ADMIXTURE, IBD (hap-IBD; also ancIBD, Ringbauer et al. 2024, for imputed ancient genotypes), F-statistics (Patterson et al. 2012), IBS statistics, TreeMix
- **Effective population size from IBD**: Browning & Browning (2015) non-parametric N_e estimation from IBD segment length distributions — directly applicable to Aim 3
- **In-house IBD method**: Agnar Helgason has an in-house method under development for detecting IBD sharing directly from unphased genotype data — a useful complementary/validation tool alongside ancIBD, and already deployed in the deCODE human plague pandemic study
- **Association testing** (if phenotype-linked follow-up work is relevant): GEMMA (Zhou & Stephens 2012), linear mixed model adjusting for relatedness and population structure
- **Sex estimation**: ry method (X:Y chromosome read ratio)
- **Contamination**: ANGSD X-chromosome contamination

## Sequencing & Lab Logistics

- Sequencing via Novogene: one NovaSeq lane yields ~1000Gb, priced at ~$3,150 — enough for ~10 present-day-quality genomes at 30x, or many more low-coverage ancient libraries
- Extraction preferentially from tooth and petrous bone (Rohland & Hofreiter 2007 silica-based protocol)
- Useful concrete cost/throughput figures for the Implementation/resources section, scaled down from the Rannís team-grant's larger sample numbers to this project's ~90 specimens

## Ahmed et al. (Under Review)

Full submission in `background/Ahmed_et_al/`. Authors: Ahmed, Renaud, Moore, **Ebenesersdóttir S.S.**, …Stefánsson, **Helgason A.**$, **Orlando L.**$ (*$ = co-corresponding*). Note: Gabriel Renaud (co-author) was himself a Marie Curie Individual Fellow — a useful precedent to mention.

**Key findings relevant to the MSCA proposal:**
- Dataset: 901 modern horse genomes + 376 ancient specimens; 25.9 million phased genotypes
- Identifies **7 genetic ancestries** shaping modern horse breeds worldwide
- **NORD ancestry** (the primary component of Icelandic horses, Scandinavian breeds) emerged at **~810 CE, coincident with the Viking era** — directly sets up the historical context of the Icelandic horse founding
- Modern European horse bloodlines only diverged in the last **700–1,350 years** — most breed differentiation is very recent
- Outside Asia, horse mobility declined after ~550 CE (fall of Rome), then increased in the Early Middle Ages — relevant to Norse-era horse transport
- Inbreeding only became widespread in the **20th century** — ancient horses had low F; isolation in Iceland would be an exceptional counter-example
- **Imputation approach**: GLIMPSE2 + BEAGLE phasing; validated at ≥0.75× coverage for ancient specimens (R² >0.956); this is exactly the method the MSCA project will apply to Icelandic horse specimens
- Reference panel of 901 modern genomes available for imputing new ancient genomes — directly usable in the MSCA project

**Key framing hook for the application**: The NORD ancestry cluster — which defines the Icelandic horse — emerged at the precise moment of Norse expansion (~810 CE). Our project will be the first to trace, from inside Iceland, how that founding stock arrived, diversified, and evolved over 1,100 years of isolation. Ahmed et al. provides the global backdrop; this project provides the Icelandic close-up.

## Relevant Reference Papers (`background/papers/`)

- `science.pdf` — Ebenesersdóttir et al. 2018, Science: ancient Icelandic human genomes (Sunna's key prior publication)
- `aar2625-ebenesersdottir-sm.pdf` — Supplementary material for the Science paper
- `sexing_icelandicHorses_Palsdottir.pdf` — Pálsdóttir et al. / Nistelberger et al. 2019, *J Archaeol Sci*: sexing ancient Icelandic horses; only prior aDNA work on this population
- `The_Horse_and_the_Norse_Reconstructing_t.pdf` — Horse and Norse reconstruction paper
- `1746-6148-7-21.pdf` — TBC (BMC Vet Research format)
- `1471-2156-7-46.pdf` — TBC (BMC Genetics format)

**Additional references identified from Agnar's Rannís Project Grant (2027) — not yet downloaded to `background/papers/`, PDFs still needed:**
- Sigurðardóttir et al. 2024, *BMC Genomics* — genetic diversity and selection signatures in Icelandic horses and Exmoor ponies; source of the N_e ≈125 estimate
- Sigurðardóttir et al. 2023, *Genet Sel Evol* — gait genetics beyond DMRT3 (RELN, STAU2)
- Sigurðardóttir et al. 2025, *Sci Rep* — STAU2 frameshift mutation and RELN regulatory elements
- Petersen et al. 2013, *PLoS One* — genome-wide SNP diversity across modern horse breeds
- Fages et al. 2019, *Cell* — five millennia of ancient horse genome time series (major state-of-art reference)
- Librado & Orlando 2021, *Annu Rev Anim Biosci* — review of equid evolutionary genomics
- Hreiðarsdóttir et al. 2014, *Icelandic Agricultural Sciences* — prior pedigree/microsatellite study of Icelandic horse population structure
- Lovász et al. 2025, *Biol Rev* — rewilded horses, conservation genetics framing (useful for broader impact/conservation angle)
- Browning & Browning 2015, *Am J Hum Genet* — N_e estimation from IBD segments
- Ringbauer et al. 2024, *Nat Genet* — ancIBD method
