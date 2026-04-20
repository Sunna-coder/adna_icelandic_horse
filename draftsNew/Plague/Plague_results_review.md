# Review Comments — Results Section
# Second Plague Pandemic (Lund, Trondheim, Vilnius)

*Detailed comments on the Results section. Same approach as the Methods and Discussion reviews — flags issues for the authors without prescribing rewriting.*

---

## Description of dataset

**Starting sample size not stated:**
The text reports that 38 individuals were excluded for low coverage and 8 for contamination, leaving 529. But the starting number is never given. State the total number of individuals sampled/sequenced before QC exclusions (529 + 38 + 8 = 575, but confirm this).

**"previously interpreted here":**
> "This concentration of graves has been previously interpreted here as reflecting victims of the Black Death together with the two subsequent outbreaks."

"Interpreted here" is ambiguous — it could mean in this paper or at this site. It almost certainly refers to Arcini et al. (2016). Change to "previously interpreted by Arcini et al. (2016) as reflecting..."

**"mean depth of 8.2x" — which samples?**
"Genomes were sequenced to a mean depth of 8.2x" — is this the mean across all 529 individuals, or just one site, or one temporal group? Clarify.

**Typo: "confidentially":**
"Temporal groups could be confidentially assigned to 514 individuals" — should be "confidently."

**Stray parenthesis:**
"The resulting dataset comprises genotypes for 99.6 million loci)." — stray closing parenthesis after "loci."

**Vilnius "during" group — unclear in dataset description:**
The figure (Fig. 1A) shows Vilnius with only Pre (19) and Post (38) labels. But the classification figure (Fig. 3) includes a "during" category for Vilnius, and the mass burial outside the city walls is clearly a during-BD context. Clarify in the text whether there is a Vilnius "during" group, how many individuals it contains, and how it is handled in analyses (merged into post-BD, or kept separate?).

**Date of Black Death arrival — inconsistency with Introduction:**
The dataset description assigns individuals to "before or after the arrival of the Black Death in 1349/50." The Introduction refers to Black Death circulation "between 1347–1353." Use a consistent date throughout; the most precise formulation for Scandinavian arrival (~1349) should be used in the Results with a cross-reference to the Introduction's broader framing.

**Trondheim post-BD sample size inconsistency:**
The dataset description and Figure 1A show Trondheim Post = 30. But the GWAS section later says "increasing from Npost=29." One of these is wrong — resolve.

---

## No evidence of strong selection driven by the plague

**The significance threshold — explain it:**
> "Neither the single site analyses nor the combined meta-analysis revealed any genetic variants that reached a genome-wide significance threshold that takes into account functional impact (Sveinbjornsson et al., 2016)."

The Sveinbjornsson et al. threshold distinguishes between "low-impact" and "other" variants with different α values (shown as green and blue lines in Figure 2A). This is not the standard 5×10⁻⁸ threshold, and a reader unfamiliar with this Icelandic GWAS convention will not understand what it means. Add one sentence explaining that this threshold adjusts significance based on predicted functional impact, resulting in a less stringent cutoff for variants with predicted functional consequences.

**"approached genome-wide significance" — overstated:**
> "A single peak on chromosome 20 approached genome-wide significance in the meta analysis (chr20:62371133, meta-analysis P=4.47E-07)"

P=4.47×10⁻⁷ is roughly 10-fold above the standard genome-wide significance threshold (5×10⁻⁸) and approximately 25-fold above the Sveinbjornsson et al. low-impact threshold. "Approached" overstates this. Use "showed a suggestive but sub-threshold signal" or simply report the p-value without the framing.

**Npost discrepancy:**
"increasing from Npost=29 to Npresent-day=1182" for Trondheim. The dataset description says Post = 30 (Fig. 1A). Resolve.

**Incomplete power values — placeholder:**
> "we expect to have over 97% power to detect the allele frequency changes reported for the ERAP2 variant (rs2549794, Klunk et al. 2022)accurate (Lund: , Trondheim:)"

"accurate" is a spurious word and the Lund/Trondheim power values are both blank. Fill in both values and remove "accurate."

**Table reference placeholder:**
> "Fig. 2B, Table xxx" — table number must be filled in.

**p-value capitalisation — inconsistent:**
The section uses both "P=" (uppercase) and "p=" (lowercase) interchangeably. Standardise throughout the manuscript. Most high-impact journals use italicised uppercase *P*.

---

## Demographic changes coincide with the arrival of the Black Death

**Larger spread in PCA**

**p-value capitalisation within the same sentence:**
> "(Lund: p=6.0×10⁻⁴, Trondheim: p=2.2×10⁻³, Vilnius: p=0.02, F-test)"
> "Lund show greater variance pre-BD (Lund: p=1.8×10⁻⁷, Trondheim: P=5.0×10⁻⁵, F-test)"

Lowercase p for Lund, uppercase P for Trondheim within the same parenthetical. Standardise.

**Vilnius absent from PC5 analysis:**
"Along PC5, which captures post-Bronze Age British-Irish ancestry, both Trondheim and Lund show greater variance pre-BD... (F-test)."

Vilnius is not mentioned here. Was the PC5 analysis not performed for Vilnius, or was it performed and not significant? State explicitly — "Vilnius was not included in this analysis as PC5 does not capture relevant ancestry variation for that site" (or similar).

---

**Quantifying spread based on Mahalanobis distances**

**Figure reference conflict:**
"(Fig 3A top panel, Fig. S12)" — earlier in the paper "Fig. S12" is used for a different figure (power analysis, Mahalanobis distances). Check whether these are the same figure or whether the numbering needs resolving.

**Trondheim non-significant result needs flagging:**
"while this difference is not significant in Trondheim (P=0.14, Wilcoxon test)"

This non-significant result for Trondheim conflicts with the Box's M test result earlier (P=1.04e-6, also for Trondheim). The Box's M test finds significant *overall* spread differences in PCA space across all seven PCs, but the Mahalanobis distance test (distance from present-day Trondheim populations) is not significant. These are measuring different things and the apparent contradiction should be briefly explained — e.g., "The Box's M test detects differences in the overall shape and spread of the PCA distribution, whereas the Mahalanobis distance test specifically measures proximity to present-day local populations; Trondheim's pre-BD individuals may be more dispersed overall without being systematically more similar to distant present-day groups."

---

**Quantifying ancestry diversity based on IBD**

**Unfilled supplementary reference:**
"For Vilnius, we estimated IBD sharing with a subset of individuals from the UK Biobank who trace their ancestry to the Baltic, Eastern Europe, and neighbouring regions (SX)"

"(SX)" is an unfilled supplementary reference. Replace with the correct supplementary note or figure number.

**Typo at end of Fisher's exact test results:**
> "(Fisher's exact test; Lund: pre-BD 71/218, post-BD 50/75, P = 3.4 x 10-7; Trondheim: pre-BD 46/95; post-BD 16/30, P = 0.68, Vilnius: pre-BD 12/19, post-BD 35/38, P=0.01)x ."

"x ." at the end is a typo — remove.

Also note: Trondheim's IBD result (P=0.68) is not significant. The text says "a larger proportion of post-BD individuals exhibit the highest IBD sharing with the corresponding present-day populations" at "all three sites" — but for Trondheim the difference is not significant. The sentence should qualify this: "at all three sites, though the difference was not significant in Trondheim."

---

**Outlier detection — (Regional) Outliers**

**Subheading formatting:**
"(Regional) Outliers" with parentheses is awkward as a heading. Use "Regional outliers" directly.

**Spelling error — Mantel-Haenszel:**
"Mantel-Haeszel chi-squared test" — the correct spelling is Mantel-Haenszel.

**"presumably attributed" — awkward:**
> "The observed decline in the proportion of outliers in the population samples over the second plague pandemic was presumably attributed to the loss of political and economic status of these cities"

"Presumably attributed" is grammatically odd — "attributed" already implies speculation. Use "likely reflects" or "we attribute this to."

**British-Irish ancestry decline: Trondheim stronger than Lund — unexplained:**
> "we find a reduction in ancestry from British Isles and Ireland from pre-BD to post-BD individuals in both Trondheim (P=1.56×10⁻¹², beta-regression, Fig. S15) and Lund (P=1.6×10⁻³)"

Trondheim's signal (P=1.56×10⁻¹²) is vastly stronger than Lund's (P=1.6×10⁻³), yet Lund has three times as many samples and a larger absolute number of British-Irish ancestry outliers. This counterintuitive result should be addressed: does Trondheim show a larger proportional decline? Is the beta-regression more sensitive to proportional rather than absolute changes? A sentence explaining the difference in effect sizes would prevent reviewer questions.

---

**Local vs non-local**

**Typo — "Mahalobis":**
"using a combination of Mahalobis distances" — should be "Mahalanobis."

**Typo — "Fisher's extract test":**
"(Fisher's extract test: Lund: pre-BD - 28/105, post-BD - 12/68, P=0.20)" — should be "Fisher's exact test."

**"and and" — double word:**
In the Vilnius section just before this: "LIT452, whose ancestry is similar to present-day and Medieval Southeast Europeans and and LIT448" — remove one "and."

**Historical context in an analytical sentence:**
"Skåne and Denmark for Lund (Skåne was largely under Danish rule from the mid-10th century until 1658)"

The parenthetical is historically informative but interrupts an analytical sentence in the Results. Consider moving it to the site description in Online Methods, and leaving the Results sentence as: "present-day cohorts from Denmark and Skåne County (Sweden) were used as the local reference population."

**Figure colour descriptions may not match figure:**
"individuals marked in yellow" and "individuals marked in orange" — confirm these colour descriptions match the actual colours used in Figure 3A (bottom panel). If the figure uses different colours, the text is misleading.

---

**Exploring ancestral origin of outliers and non-locals — Using PCA**

**LIT448 description lacks specificity:**
"LIT448, who in a supervised ADMIXTURE analysis is assigned 22% Asian ancestry and shows similarities to contemporary Eurasian steppe populations (Supplementary Note 3)"

"22% Asian ancestry" is vague — Central Asian, East Asian, and Siberian ancestries are genetically distinct and would have different historical interpretations. The text should specify what kind of Asian ancestry, even if only briefly ("Central Asian/steppe-related"), with Supplementary Note 3 providing full details.

---

**Exploring ancestral origin of outliers and non-locals — Using IBD**

**LUN101 and SK051 — sites not stated:**
"LUN101 and SK051 show elevated IBD sharing with Finland (Fig. 4C)"

LUN101 is from Lund (LUN prefix). SK051 appears to be from Trondheim (SK prefix). The text does not state which sites these individuals are from. Given that they are discussed together and shown on a panel covering all three sites, explicitly state the site for each. Similarly for LUN291 in the Baltic panel.

**SK090 — temporal uncertainty not acknowledged:**
"one individual of uncertain date (SK090) shows markedly elevated sharing with present-day Shetlanders and Orcadians"

The text states this individual is of uncertain date, but does not note the interpretive consequence: it cannot be assigned to the pre-BD period, which means it cannot be used as evidence that Shetland/Orkney connections existed before the Black Death. The finding is still valid (it shows such connections existed at some point in the Trondheim sequence), but the temporal uncertainty limits the inference. Note this.

**Welsh ancestry in Lund — no historical context offered:**
"two pre-BD Lund individuals (LUN145 and LUN298) show strongly elevated IBD sharing specifically with present-day Welsh individuals"

This is a striking and unusual finding — Welsh individuals in pre-BD Lund. The text reports it without any comment. Either acknowledge that the historical context for this is unclear, or offer a brief interpretation (e.g., the Hanseatic trade network connecting Scandinavia with English ports, through which Welsh merchants or travellers might plausibly have passed). As it stands, the result is stated and then left entirely without context, which will prompt reviewer questions.

---

**Phenotype related tests**

**"discovered" — informal for results section:**
"our analysis discovered a consistent significant trend toward lighter hair pigmentation in the post-BD Lund cohort"

"Discovered" is informal. Use "identified" or "detected."

**Subject-verb agreement error:**
"All in all, the changes in ancestry at all three sampling sites across the second plague pandemic suggests that the pandemic might have partly precipitated changes..."

"Changes...suggests" should be "changes...suggest."

**Interpretive paragraph in Results:**
The closing paragraph of this section ("All in all, the changes in ancestry at all three sampling sites...") is interpretive and reads like Discussion text. Consider moving it to the Discussion, or keeping it as a brief transitional summary sentence only.

**Hair colour and ancestry shift — connection not made:**
The finding of lighter hair post-BD in Lund is reported but the obvious interpretation — that it reflects the loss of continental European and British-Irish individuals who on average have darker hair than Scandinavians — is not stated. Either make this connection here or flag it explicitly for the Discussion. At present it looks like an unexplained standalone result.

---

## "Bits and pieces not yet integrated" section

This heading should not appear in any version shared with co-authors or reviewers. The section contains two results:

1. Lower IBD sharing with present-day locals pre-BD than post-BD in Lund and Trondheim — with the important caveat that IBD length decreases with time. This needs to be placed in the "Quantifying ancestry diversity based on IBD" subsection, with the temporal-distance caveat clearly stated.

2. The detailed Vilnius paragraph (Ruthenian churchyard, mass burial, Christianisation) — a version of this is already in the Results. Check that the main-text version captures all the content from the notes version, then delete the notes version entirely.

---

## Summary of typos and placeholders

| Location | Issue |
|---|---|
| Dataset description | "confidentially" → "confidently" |
| Dataset description | Stray ")" after "99.6 million loci" |
| Dataset description | Starting sample size before QC not stated |
| Dataset description | Vilnius "during" group not described |
| Selection results | "approached genome-wide significance" — overstated for P=4.47×10⁻⁷ |
| Selection results | Npost=29 vs 30 for Trondheim — inconsistency |
| Selection results | "(Lund: , Trondheim:)" — power values missing |
| Selection results | "accurate" spurious word in power sentence |
| Selection results | "Table xxx" — unfilled placeholder |
| IBD results | "(SX)" — unfilled supplementary reference |
| IBD results | "x ." at end of Fisher's test — typo |
| Outlier detection | "Mantel-Haeszel" → "Mantel-Haenszel" |
| Local vs non-local | "Mahalobis" → "Mahalanobis" |
| Local vs non-local | "Fisher's extract test" → "Fisher's exact test" |
| PCA ancestry | "and and LIT448" — double word |
| Phenotype | "discovered" → "detected" or "identified" |
| Phenotype | "changes...suggests" → "changes...suggest" |
| Throughout | p= vs P= capitalisation — standardise |

---

## Priority ranking

| Priority | Item |
|---|---|
| Must fix before co-author review | All placeholders (Table xxx, SX, power values); "bits and pieces" section must be integrated or removed |
| Must resolve before submission | Trondheim Npost=29 vs 30 inconsistency; Vilnius during-BD group clarification; starting sample size |
| Should address | Trondheim Box's M vs Mahalanobis contradiction — explain; British-Irish Trondheim/Lund effect size difference — explain |
| Should address | Welsh ancestry in Lund — needs historical context or explicit acknowledgement of uncertainty |
| Should address | Hair colour finding — connect explicitly to ancestry shift |
| Should address | Interpretive closing paragraph — consider moving to Discussion |
| Minor fixes | All typos listed in table above; p-value capitalisation standardisation |
