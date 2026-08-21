# Part B-1, Section 1: Excellence

*Rebuilt to prioritise Agnar's original Rannís Project Grant wording (`Project-Grant-2027_project-description_forSubmission_norefs.docx`) over newly-generated text, per Sunna's request. Each section is flagged below:*
- ***[REORGANIZED]*** *— substantially the original Rannís wording, reorganised/adapted for scope (solo fellowship vs. team grant), pronoun (I vs. we/the PL), and sample numbers (90 vs. 150 specimens) where they differ. Not newly composed.*
- ***[NEW — recommend rewriting in your own words]*** *— no equivalent exists in the Rannís text (MSCA requires content the national grant template doesn't ask for at all: a named host supervisor, personal career narrative, Green Charter, etc.). Drafted close to fact, styled after the Rannís document's tone, but this is original composition and should be the priority for your own rewrite pass before submission.*

---

## 1.1 Objectives and Research Questions

***[REORGANIZED — from Rannís Section A, Specific Aims 2 and 3, and the opening paragraph]***

Humans brought horses to Iceland. Although the settlement of Iceland was a Norse-driven enterprise, the British Isles and Ireland played an important intermediate role, and it is now well established that many of the human settlers had Gaelic ancestry. While most older studies have indicated present-day Scandinavian breeds to be the closest relatives of the Icelandic horse, the geographical origin of the founding horses has not been adequately resolved; some more recent studies have indicated a close relationship with breeds from the British Isles and Ireland, particularly the Shetland pony. By sequencing genomes from the remains of ancient Icelandic horses stored at the National Museum of Iceland, particularly those retrieved from pre-Christian burials (dated to before 1000 CE), I will provide a unique assessment of the first horses brought to Iceland.

**Objective 1 — Origins and founding**: Of particular interest is whether the pattern of genomic variation among the first horses in Iceland is consistent with a single breeding population or more than one population from that time period. I will assign a geographical origin to the ancient horses based on an ancestry comparison with existing genomes from the reference set of present-day worldwide breeds and ancient horses held by Prof. Orlando's laboratory, which includes several breeds from Scandinavia and the British Isles and Ireland. I will also assess whether there is evidence for ancestries in present-day Icelandic horses not detected in the ancient dataset, and use identity-by-descent (IBD) sharing to examine how well the ancient genomes account for the genomes of present-day Icelandic horses, helping assess the extent to which horses may have been imported after settlement, until this was legally prohibited in 1882.

**Objective 2 — Post-founding demography**: Based on microarray genotype data, Sigurðardóttir et al. (2024) used linkage disequilibrium patterns to estimate the effective population size (N_e) of present-day Icelandic horses at around 125 individuals, down from N_e=500 sixty generations ago. I will use the pattern of IBD sharing to estimate N_e directly in ancient horses from different time periods, providing a more direct estimate of N_e in the actual founding population, rather than inferring it backward from present-day data alone. I will also assess the magnitude and genomic distribution of heterozygosity and runs of homozygosity (ROH) to directly assess how genetic diversity has changed across time, and whether there is evidence of selection affecting particular genomic regions. As demonstrated for humans in Iceland (Ebenesersdóttir et al. 2018), the gene pool of horses is likely to have been subject to considerable genetic drift; I will examine this using PCA and F-statistics, and use IBD sharing between ancient horses and the present-day population to determine whether there is evidence for differential contributions of individual ancient horses from the same time period.

**Objective 3 — Adaptation and trait evolution**: What genomic signatures of local adaptation and selective breeding are detectable in ancient and historical Icelandic horses? How do the genetic variants associated with the breed's most distinctive traits (the tölt and pace gaits [DMRT3, and more recently RELN/STAU2; Sigurðardóttir et al. 2023, 2025], metabolic adaptation to low-calorie winters, and disease susceptibility) evolve through time under isolation?

Together, these objectives will produce the first genome-wide reconstruction of the Icelandic horse's evolutionary history.

**Originality** ***[REORGANIZED — from Rannís "Impact and originality"]***: This project will make the Icelandic horse a genetically well-characterised breed at the level of a temporal transect, something not previously attempted. Many of the aims above would not have been possible even five years ago, but have become feasible due to the lowering cost of WGS data, advances in ancient DNA methods, and the availability of a recombination map and haplotype reference panel for a diverse array of horses (Ahmed et al., under review). By comparing genomes from ancient and present-day Icelandic horses, it will be possible to document the genomic consequences of a thousand years of isolation in greater detail than for almost any other domestic animal population.

---

## 1.2 Methodology

***[REORGANIZED — from Rannís Section C, "Methodology"]***

All laboratory work involving DNA isolation from ancient horse remains and library preparation will be conducted in the dedicated ancient DNA facility at Amgen deCODE Genetics, established and managed by the applicant. DNA will be preferentially extracted from tooth and petrous bone samples using established silica-in-solution protocols, converted into sequencing libraries using the BEST or SCR protocols, and sequenced on Illumina NovaSeq machines. Libraries will be sent to Novogene for sequencing, where one NovaSeq lane yielding 1000Gb of reads is priced at around $3,150.

Genotype imputation of low-coverage ancient genomes will be performed using GLIMPSE2, leveraging the imputation reference panel of >900 modern and ancient horse genomes developed by Prof. Orlando's laboratory (Ahmed et al., under review). This panel has been validated for imputing ancient horse genomes at low coverage.

The population genetic analyses for Objectives 1–3 will be performed using a range of methods, including PCA, ADMIXTURE, F-statistics, identity by state (IBS) statistics, and IBD sharing. IBD sharing will be assessed with standard methods (ancIBD, Ringbauer et al. 2024), but also with a complementary method under development by collaborator Agnar Helgason, which detects IBD sharing based on unphased genotype data.

**Gender dimension and open science** ***[REORGANIZED — from Rannís Section E, adapted]***: Sex will be determined genetically for all specimens and included as a covariate throughout. All genome sequence data generated will be deposited in the European Nucleotide Archive (ENA), where it will be publicly available with no embargo. Bioinformatic pipelines will be released on GitHub under open-source licences when preprints are posted. I will aim to publish in open-access journals and post preprints on bioRxiv prior to journal submission, ensuring all data remains openly accessible for at least ten years after project completion.

---

## 1.3 Quality of Supervision, Training, and Two-Way Knowledge Transfer

***[REWRITE PASS 1 — Claude, attempting a more specific/less generic version. Still flagged for Sunna's own voice pass; bracketed notes mark spots where a real personal detail would strengthen this further and that I cannot supply myself.]***

Prof. Ludovic Orlando leads the Centre for Anthropobiology and Genomics of Toulouse (CAGT) and holds a CNRS Silver Medal for his work on ancient horse genomics; his laboratory built the reference panel of over 900 modern and ancient horse genomes that this project's imputation strategy depends on. I already work with him directly: we are co-authors, with him as co-corresponding author, on Ahmed et al. (under review, *Nature*), a study of global horse genetic diversity. [SUNNA: a sentence here on how this collaboration actually started, e.g. what prompted the first contact or joint sample, would replace the generic "active ongoing collaboration" framing with something specific.]

My own background is in ancient DNA from human material, not horses: I built and have run deCODE's low-depth imputation pipeline (GLIMPSE2) and IBD analysis toolkit for several years, most recently at the scale of a 500+ individual study on the second plague pandemic. What I have not done before is apply any of this to a breed-structured, multi-species-comparison dataset. Three things are genuinely new to me and are what I would be learning under Prof. Orlando's supervision: working with a large multi-breed comparative panel rather than a single-population one; admixture graph modelling (ADMIXTOOLS2) in that multi-breed context; and demographic modelling with PSMC/SMC++, which I have read about but never run myself. [SUNNA: if there's a specific technique or paper of Orlando's you're most looking forward to learning, naming it here would help.]

What I bring in return is not abstract: a working extraction and library-prep protocol tuned specifically to how degraded Icelandic skeletal material behaves (built through years of failed and successful extractions, not from a published protocol alone), direct sampling access to the National Museum of Iceland's collection, and hands-on experience running GLIMPSE2 imputation at a scale CAGT has not yet applied to horses. This is a genuine exchange, not one-directional training.

No secondment is planned. The Iceland-based months of the project are fieldwork and sampling at my own institution, not a placement at a third organisation, so they don't count as a secondment under the MSCA definition.

---

## 1.4 Quality and Appropriateness of the Researcher's Professional Experience, Competences and Skills

***[NEW — recommend rewriting in your own words; Rannís Section D discusses Agnar's bio and "the post doc" generically, not the applicant's personal competences]***

The applicant holds a PhD in Biological Anthropology (University of Iceland, 2023) and has worked as a Research Scientist at deCODE Genetics since 2013, specialising in ancient DNA and population structure. She independently built and operated deCODE's ancient DNA clean-room laboratory, and developed deCODE's population genomics pipeline dedicated to low-depth (ancient) samples, including both the mapping and GLIMPSE2 imputation pipelines, which she has run and maintained herself. This is demonstrated most directly by Ebenesersdóttir et al. (*Science* 2018), on which she led both the laboratory work and the genomic analysis for 201 ancient Icelandic human genomes.

What is new for this project is the extension of this expertise from human to non-human, breed-structured genomics. Beyond this technical skillset, the applicant brings a long-standing personal engagement with the Icelandic horse specifically, having owned and cared for Icelandic horses since childhood, giving her practical, first-hand familiarity with the breed's behaviour, gaits, and temperament relevant to Objective 3.
