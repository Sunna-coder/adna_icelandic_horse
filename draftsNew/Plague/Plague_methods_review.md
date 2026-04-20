# Review Comments — Online Methods
# Second Plague Pandemic (Lund, Trondheim, Vilnius)

*Detailed comments on the Online Methods section. Issues are grouped by subsection. Placeholders, internal inconsistencies, incomplete references, and methodological points that need clarification are all flagged.*

---

## General

The methods are broadly well-written and detailed. The main problems are: (1) several incomplete or missing references, (2) internal inconsistencies in numbers between the Methods and Results, (3) a number of unfilled placeholders, and (4) a few important methodological choices that are not explained or justified. These are noted in detail below.

---

## Skeletal material analysed

**Temporal bones in Vilnius:**
The text says Vilnius samples were "mainly temporal bones (with some teeth)." All other sites use teeth. Temporal bones are a common sampling site in aDNA work, but the difference should be noted — DNA yield and quality can differ between element types. The Methods should briefly state why temporal bones were used (presumably due to the nature of the Lithuanian sampling or preservation conditions), and whether any downstream analyses checked for systematic differences in endogenous content or damage rates between element types.

**Lund: "42 individuals from Lund who derive from a group of skeletons tentatively dated to the late fourteenth century"** — this sentence appears in the Results (Description of dataset), not in the Methods. The Methods section describes the site but not this specific group assignment. The two sections should be consistent about how the dating of the "during-BD" group is characterised.

---

## DNA library preparation, enrichment and sequencing

**Mixed data types for Trondheim — critical clarification needed:**
The Trondheim data includes "previously published target capture and shotgun sequence data" (Gopalakrishnan et al. 2022) *plus* new shotgun data. Target-captured data and shotgun data differ fundamentally in coverage distribution and are not comparable for whole-genome GWAS or GLIMPSE2 imputation. It is unclear whether the previously published target-capture libraries from Gopalakrishnan et al. were included in the GWAS and imputation analyses, or only the new shotgun data. This needs to be stated explicitly. If target-capture data were included, explain how they were handled in the imputation step.

**Different library protocols across sites:**
- Trondheim: BEST double-stranded libraries (Carøe et al. 2018 or Mak et al. 2017)
- Lund and Vilnius: SCR single-stranded libraries (Kapp et al. 2021)

Single-stranded and double-stranded library protocols differ in their representation of short, degraded fragments, potentially affecting endogenous content estimates and coverage at damaged sites. The Methods should acknowledge this heterogeneity and state whether any correction or harmonisation was applied in downstream analyses.

**USER treatment — inconsistent application:**
"While the majority of the sequence data from Vilnius and Lund was subjected to USER treatment, a subset was left untreated to enable assessment of DNA damage profiles."

For Trondheim: "DNA from a subset of the Trondheim libraries was subjected to USER treatment."

This means the dataset is a mixture of USER-treated and untreated libraries across all three sites. The Methods should state: (i) how USER-treated and untreated libraries from the same individual were combined (merged before or after mapDamage rescaling?), (ii) whether untreated libraries were subject to stricter mapDamage rescaling, and (iii) whether having USER-treated versus untreated data was included as a covariate in the GWAS or otherwise controlled for.

---

## Processing and alignment of sequencing reads

**Three incomplete references:**

1. *"following the approach described in Ebenesersdóttir et al."* — no year, no journal. This is the mtDNA contamination estimation method. Provide the full citation.

2. *"using ANGSD (Rasmussen et al.)"* — no year. This is almost certainly Korneliussen et al. 2014 (*BMC Bioinformatics*); "Rasmussen et al." may be the wrong author list. Check.

3. *"following Skoglund et al."* — no year. The standard sex-determination paper from Skoglund is Skoglund et al. 2013 (*PLOS ONE*). Provide the year.

**ContamLD threshold:**
"A threshold of 10% was applied to the ContamLD estimate to identify contaminated samples."

A 10% autosomal contamination threshold is relatively lenient by current aDNA standards (many studies use 5%). Justify this threshold choice, or cite a reference for it. Also state what happened to samples between 5–10% — were they included with a note, or excluded at 10%? The Results say 8 individuals were removed for contamination; clarify whether these were all above 10% ContamLD or whether X-chromosome contamination thresholds also contributed to exclusions.

**mapDamage applied to USER-treated libraries:**
"mapDamage2.0 was applied to rescale base quality scores, excluding likely damaged bases."

If this was applied to all libraries including USER-treated ones, note that. USER treatment removes deaminated cytosines, so mapDamage rescaling of USER-treated data is redundant at C→T damage sites but may still be applied to remove residual damage. Clarify whether mapDamage was applied to all libraries or only untreated ones.

---

## Genotype imputation

**Inconsistency in reference panel size — must resolve:**
- Methods section: "comprising 50,179 individuals"
- Results section: "a reference panel of 50,129 contemporary individuals"

These differ by 50 individuals. One of these numbers is wrong. Resolve before submission.

**No mention of minimum sequencing depth for imputation:**
GLIMPSE2 requires some minimum coverage to produce reliable imputation. The Methods do not state a minimum depth threshold for inclusion in the imputation step. Given that some libraries have very low coverage (the Results mention exclusion at DoC <0.1x), clarify what the effective minimum depth was for imputation and whether very low-coverage samples produced reliable imputed genotypes.

**Imputation quality filtering:**
The GWAS section later describes filtering on INFO score (>0.95 or >0.98). But the imputation section itself does not describe how imputation quality was assessed across the full dataset. Add a sentence on INFO score distributions and what overall imputation accuracy looked like (e.g., from validation against higher-coverage samples).

---

## Kinship analysis

**AADR liftover — validation needed:**
"Loci and allele frequency files bundled with ancIBD, as well as the recombination map included in the .snp file for AADR v51.1, were lifted over to hg38."

Liftover of recombination maps and allele frequency files from hg19 to hg38 is non-trivial. Some positions may not lift successfully, and failure rates should be reported. State what proportion of loci were successfully lifted over, and whether any chromosomal regions caused problems.

**IBD2 flag:**
"ancIBD-run using the --IBD2 flag" — briefly explain what this enables (detection of IBD2 segments, i.e., sharing of both haplotypes, as expected in first-degree relatives). A reader unfamiliar with ancIBD will not know what this flag does.

---

## Principal components analysis

**Inconsistency in West Eurasian PCA reference dataset size — must resolve:**
- Methods: "9,052 individuals from 72 populations"
- Results: "9,053 present-day individuals from 67 west Eurasian populations"

Both the number of individuals (9,052 vs 9,053) and the number of populations (72 vs 67) differ between sections. One set of numbers is wrong. Resolve.

**Inconsistency in ScandIce group count:**
- Methods (PCA section): "17,523 individuals from 43 regions"
- Methods (IBD reference panel section): "17,523 present-day Scandinavian individuals divided into 14 groups"
- Methods (Ancestry classification): "14 regional cohorts spanning Denmark, Sweden and Norway"

43 regions versus 14 groups — both appear in the Methods. Are the 43 regions collapsed into 14 groups for the IBD analysis? If so, explain the grouping scheme or reference a supplementary table. As written it reads as a contradiction.

**"a scalar correction factor to account for overfitting":**
This is vague. What scalar correction factor? This is presumably the shrinkage correction applied when projecting ancient individuals onto modern PCA space (a known issue with PC projection). Cite the method (e.g., the correction described in McVean 2009 or similar) or describe it more precisely.

---

## Calling identity-by-descent (IBD) segments to present-day individuals

**Vilnius reference panel — placeholder not filled:**
"For Vilnius, the reference panel comprised contemporary populations of considerably smaller sample sizes. XXX"

This is an explicit unfilled placeholder. The composition of the Vilnius IBD reference panel needs to be stated before submission. The Ancestry classification section later mentions Lithuanian, Latvian-Estonian, Polish, Russian, Belarusian, Ukrainian, Dutch, German, and Scandinavian populations from UK Biobank — those should be described here too, with sample sizes.

**Orcadian and Shetlandic as "proxies for British ancestry":**
Orcadians and Shetlanders have substantial Norwegian ancestry (reflecting Scandinavian settlement of the Northern Isles until 1472 CE). They are not straightforward proxies for British ancestry, and classifying an ancient individual as non-Scandinavian on the basis of elevated sharing with Orcadians is complicated by this dual heritage. Acknowledge this limitation. The TCRA signal in Lund chromosome 14 results, and the Trondheim outlier SK090, are specifically discussed in terms of Shetland/Orkney ancestry — so this matters for those results.

**Relaxed threshold for Orkney and Shetland:**
"We relaxed this threshold to >95 markers for the Orkney and Shetland sets due to slightly lower marker density."

This creates an asymmetry: Orkney/Shetland IBD is called at a more permissive threshold than other populations. Briefly quantify "slightly lower marker density" and confirm that the relaxed threshold does not inflate apparent IBD sharing with those groups.

---

## Ancestry classification

**Grammatical errors — must fix:**

1. "it The final set of non-regional samples..." — "it" is a copyediting artifact, should be removed.

2. "Instead, applied the analytical framework at the regional level..." — missing subject. Should read "Instead, we applied the analytical framework..."

**Orcadians and Shetlanders as British-Irish proxies (repeated):**
The ancestry classification explicitly uses "Orcadian & Shetlandic (used as proxies for British-Irish ancestry)" as non-Scandinavian references. As noted above, given their Norwegian ancestry, this choice may misclassify some individuals of Norwegian origin as having British-Irish ancestry (or vice versa). This is flagged already in the leave-one-out validation section (Dutch-Danish confusion), but the same issue applies here. If cross-validation was done for the Orkney/Shetland proxy specifically, note it.

**Latvians excluded from Vilnius analysis:**
"Lithuanians and Estonians; Latvians were excluded due to small sample size, n=7"

Latvia sits geographically between Lithuania and Estonia. Excluding Latvians weakens the Baltic reference, particularly for detecting individuals from Latvia or with mixed Baltic ancestry. Note this as a limitation.

**Alpha threshold for chi-square test:**
"chi-square test (α = 0.001, df = 7)"

The choice of α = 0.001 is not justified. Why 0.001 rather than 0.05 or a Bonferroni-corrected threshold? A more stringent threshold will miss some genuine outliers; a lenient one will misclassify locals. Reference or justify this choice.

---

## Validation of detection of ancestry outliers

**Grammatical error:**
"Our findings indicate that both all three methods converge..."

"Both all three" is ungrammatical. Should be "all three methods converge" (removing "both").

**qpadm reference:**
The section compares the PCA+IBD results to qpadm (Haak et al. 2015). Note that qpadm was originally described in Haak et al. 2015 but the method is more fully described in Harney et al. 2021 (*Genome Biology*) and Lazaridis et al. 2022. If using the current implementation, cite the appropriate version.

---

## Phenotype prediction

**P-value threshold placeholder:**
"only SNPs with strong trait associations (P-value < XX) were retained"

This is an unfilled placeholder. State the actual p-value threshold used.

**Method not specified for anthropometric traits:**
The section says PRS for pigmentation traits used "logistic regression in PLINK v1.9" but does not specify the regression method used for height and BMI. Specify (presumably linear regression in PLINK or a similar approach).

**Number of SNPs used:**
The section does not state how many SNPs were retained per trait after LD pruning and p-value filtering. This is standard to report in PRS methods. Add a sentence or direct the reader to a supplementary table.

**GWAS summary statistics from the Icelandic population:**
"We derived scores from genome-wide association study (GWAS) summary statistics based on the Icelandic population for all traits except hair color."

This is a reasonable choice given the Icelandic population's northern European ancestry and the large available GWAS sample sizes at deCODE. But it should be briefly justified — the summary statistics were derived from a present-day Icelandic population, and the LD structure and allele frequencies used for PRS weighting may differ from those of medieval Scandinavians. One sentence noting this as a limitation (and why it is unlikely to substantially bias the results) would strengthen the section.

---

## Selection scan

**Pre-BD as "death" and post-BD as "survival" — assumption needs a caveat:**
"testing for differences in allele frequencies between the pre- and post-BD groups, treating them as proxies for death and survival, respectively"

This is an important conceptual clarification, but it is not entirely accurate. Post-BD individuals are people who were buried *after* the Black Death arrived — they are not confirmed survivors of plague. Many post-BD individuals may have died from plague and simply been buried in post-1350 contexts. The assignment is based on burial date, not documented plague survival. This should be stated as an approximation, and the implication noted: the GWAS is testing for allele frequency changes between time periods, not strictly between individuals who died of plague and those who did not.

**"deCODE's internal QC" — not reproducible:**
"we excluded variants flagged for quality concerns in deCODE's internal QC"

This is not reproducible for external readers or reviewers. What are the QC criteria? Are the excluded variants listed in a supplementary table? At minimum, state the general nature of the QC (e.g., strand ambiguity, batch effects, known problematic regions) and refer to a supplementary file with the excluded variant list.

**PCAngsd not cited:**
"computed with PCAngsd using pre-BD samples to account for population structure" — PCAngsd is a specific tool (Meisner and Albrechtsen 2018, *Genetics*). Cite it.

**Typos:**
- "mult-allelic INDELs" → "multi-allelic INDELs"
- "genomAD" → "gnomAD" (twice in the same sentence)

**Placeholder — number of retained markers:**
"After filtering, the number of retained markers ranged from XXX to XXX across the GWAS datasets (Table SXXX)"

Both values and the table number are unfilled. These must be provided.

**Post-BD to present-day independence assumption:**
"We assume that allele frequency changes from the post-BD period to the present-day era are largely independent of the BD."

This assumption is stated but not defended. If post-BD population recovery involved directional migration from specific source populations (e.g., replacement of diverse pre-BD cosmopolitan populations with more local individuals), that would generate allele frequency trends between post-BD and present-day that are *not* independent of the BD's demographic effects. The paper already shows that exactly this kind of ancestry shift occurred. This tension should be acknowledged: the ancestry shift means that the post-BD period has a different ancestry composition than the pre-BD period, and those ancestry differences will also show up as allele frequency differences between post-BD and present-day. The Discussion acknowledges this (demographic processes can obscure selection signals), but the Methods should flag the assumption more explicitly.

---

## Change of allele frequency at loci previously associated with BD

**Minor grammar:**
"the human genomic consequences Black Death (Klunk et al., 2022)" — missing "of the" before "Black Death."

This section is otherwise clear and complete.

---

## Power analysis

**Probable typo in R package name:**
"Power analyses were performed with the R package pwd"

The standard R package for power analysis is **pwr** (not "pwd"). "pwd" is a Unix command (print working directory) and not a statistical package. If a different package was used, name it correctly. If "pwr" was intended, correct the typo.

---

## Summary of placeholders and inconsistencies requiring resolution

| Section | Issue |
|---|---|
| Imputation | Reference panel size: 50,179 (Methods) vs 50,129 (Results) — which is correct? |
| PCA | West Eurasian reference: 9,052/72 pops (Methods) vs 9,053/67 pops (Results) — which is correct? |
| PCA | ScandIce: "43 regions" (PCA section) vs "14 groups" (IBD/classification sections) — clarify |
| IBD panel | Vilnius reference panel composition: "XXX" — must be filled in |
| Selection scan | Retained marker count: "XXX to XXX (Table SXXX)" — must be filled in |
| Phenotype prediction | PRS p-value threshold: "P-value < XX" — must be filled in |
| Power analysis | R package name: "pwd" — probably should be "pwr" |
| Library prep | Missing reference: "Ebenesersdóttir et al." (mtDNA contamination) — no year |
| Library prep | Missing reference: "ANGSD (Rasmussen et al.)" — no year; check author list |
| Library prep | Missing reference: "following Skoglund et al." — no year |
| Ancestry classification | "it The final set" — copyediting artifact |
| Ancestry classification | "Instead, applied" — missing "we" |
| Validation | "both all three methods" — grammatical error |
| Selection scan | "mult-allelic" → "multi-allelic" |
| Selection scan | "genomAD" → "gnomAD" (two occurrences) |
| BD loci section | "consequences Black Death" → "consequences of the Black Death" |

---

## Priority ranking

| Priority | Item |
|---|---|
| Must resolve before co-author review | All placeholder values (marker counts, panel sizes, p-value thresholds) |
| Must resolve before submission | All number inconsistencies (reference panel size, PCA population count, ScandIce group count) |
| Must resolve before submission | Trondheim mixed data types (target capture vs. shotgun) — clarify which data went into GWAS/imputation |
| Must resolve before submission | All three incomplete references (Ebenesersdóttir et al., ANGSD Rasmussen et al., Skoglund et al.) |
| Should address | USER treatment/mapDamage interaction across library types |
| Should address | ContamLD 10% threshold — justify or compare to field standard |
| Should address | Post-BD independence assumption — acknowledge tension with ancestry shift finding |
| Should address | Orcadian/Shetlandic as British proxy — note Norwegian ancestry complication |
| Minor fixes | Typos: mult-allelic, genomAD, "pwd" package, grammatical errors listed above |
