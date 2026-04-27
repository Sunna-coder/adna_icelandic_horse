# Review — Rannís_verkefnastyrkur_horses_2704.docx
# Bred by Vikings: the genomic history of the Icelandic horse through isolation
# Reviewed: 2026-04-27

*Comments are organised by section. [TYPO] = fix before pushing; [MINOR] = small substantive fix; [MODERATE] = paragraph-level revision needed; [MAJOR] = structural issue.*

---

## What has improved since v31.md

- **Strontium paragraph**: the repeated phrase ("which horses were physically transported to Iceland and which were born there") is now fixed. The new framing is clearer and more informative.
- **HMGA2 cross-reference**: the metabolic disease sub-aim now says "the latter already tracked for body size above" — the double role is flagged correctly.
- **Aim 1**: "Some settlers likely came from established Norse colonies in Orkney, Shetland, and the British Isles" is a stronger framing than the previous version.
- **Aim 3**: the data generation paragraph is cleaner and better integrated; the X chromosome argument is now part of the demographic aim rather than a standalone paragraph.
- **Body size**: significantly expanded and improved. The trend toward larger body size in recent decades is a good addition.
- **Coat colour**: revised to make clear that the founding colour palette is unknown, and that the question is whether diversity expanded, narrowed, or shifted — this is the right framing.
- **Originality**: the Faroe Islands and Greenland comparison is an excellent addition that strengthens the "no equivalent dataset" argument.
- **Impact**: tourism mention added; settler paragraph strengthened.
- **"31 countries" repetition**: fixed in Section A impact — the second occurrence now just says "Working with both puts these findings directly in front of breeders."

---

## Typos and corrupted text — fix before pushing

**T1** Line [66], Aim 1: "modelling genome-wide ancient DNA (aDNA) rom the Icelandic specimens" — missing "f" from "from."

**T2** Line [80], Body size: "for the first timde" — typo, should be "time."

**T3** Line [89], Feasibility — Infrastructure: "Prof. A letter of support is included." — this is a corrupted sentence. Should read: "...Prof. Orlando can also provide sequencing as a fallback. A letter of support is included."

**T4** Line [103], Section C closing: "The SSE's authorship on Ahmed et al." — remove the extra "The."

**T5** Line [133], Section F: "Option:" — the number "1" is missing. Should be "Option 1."

---

## Missing references — must be added to bibliography before submission

**R1** McGovern et al. (1996) — cited in the Originality section ("Norse settlers brought horses to the Faroe Islands from around 800 CE and to Greenland from around 985 CE") but not in the bibliography. Add the full reference.

**R2** Smiarowski et al. (2017) — same sentence, same problem. Not in the bibliography. Add the full reference.

**R3** FAO FAOSTAT (2024) — cited in the Section B opening paragraph but not in the bibliography. Add the full reference with URL and access date.

---

## References in bibliography not cited in text — check and remove if unused

**R4** Meyer & Kircher (2010) — library preparation method — listed in the bibliography but does not appear to be cited in the text of the 2704 version. If you are still citing it (e.g. for the double-stranded library prep protocol), add the citation back to the relevant sentence in Section C Phase 1. If not used, remove from the bibliography.

**R5** Íslendingabók — Landnámabók (1968) — in the bibliography but not cited anywhere in the text. Either add a citation at a relevant point in Section A or B, or remove.

---

## Section A

**A1 [MINOR] Aim 1 — "aDNA" abbreviation introduced mid-sentence.** Line [66] introduces "(aDNA)" parenthetically in the middle of a sentence without defining it first. Either spell out "ancient DNA (aDNA)" at its first use in the document and then use "aDNA" throughout, or avoid the abbreviation in the main text (Section B also spells out "ancient DNA" without using the abbreviation consistently). Pick one approach and apply it uniformly.

**A2 [MODERATE] Aim 2 — ARG examples still weak.** "When did DMRT3 reach fixation?" can be answered from allele frequency trajectories alone without an ARG. The genuine added value of the ARG is identifying which founder line first carried a variant and dating admixture at the haplotype level. Reframe the examples to illustrate what the ARG specifically enables that allele frequency tracking cannot.

**A3 [MODERATE] Aim 3 — data generation still in the Aim section.** The first paragraph of Aim 3 describes generating present-day horse sequences. This belongs in Feasibility or Section C. The Aim 3 opening should state the scientific questions/hypotheses and leave data generation to Feasibility.

**A4 [MINOR] Body size — "timde" aside, check the new sentence about recent body size trends.** "breeders have noted a trend toward larger body size in recent decades, likely driven by competition preferences and export demand" — is there a citable source for this claim? If it is informal knowledge among breeders, either remove it or flag it as "personal communication" or "anecdotal evidence from breed organisations."

**A5 [MINOR] Y-chromosome claim — Weinzerl 2024.** Still the sole source for the claim that all present-day Icelandic stallions carry Icelandic-specific Y-chromosomal haplotypes. A diploma thesis is a weak foundation for this claim. Find a peer-reviewed corroboration or add a caveat.

---

## Section B

**B1 [MAJOR] Dense paragraph still present.** The long paragraph covering SNP comparisons, Ne, bottlenecks, IBH, MHC, 670K array design, pedigree analysis, and Y-chromosomes is still ~450 words in a single block. Split after the FOXO1/HMGA2 sentence: (1) genetic structure and diversity; (2) disease loci, array design, and pedigree. This will make Section B much more readable.

**B2 [MODERATE] NORD/BRIT bridging sentence still missing.** The passage says Icelandic horses are NORD and Dartmoor/Exmoor are BRIT (different components), then says SNP clustering (Petersen et al.) places them in a shared clade. Without a bridging sentence, this reads as contradictory. Add one sentence explaining that NORD and BRIT are defined within the Ahmed et al. framework using specific ancient comparators, while the Petersen et al. clustering captures a deeper pre-divergence ancestry.

---

## Section C

**C1 [MAJOR] Milestone table — cannot read content from docx extraction, but in v31 it was inconsistent with the four-paper plan.** Check that M6 and M8 have been updated. M6 should reference Article 1 only; there should be intermediate milestones for Articles 2 and 3; M8 should reflect the final article or data deposit rather than "both manuscripts submitted."

**C2 [MODERATE] PSMC inappropriate for low-coverage ancient genomes.** Phase 2 still lists "PSMC (Li & Durbin, 2011) and SMC++" for effective population size reconstruction. PSMC requires a single high-coverage genome (>10×) and is not appropriate for imputed low-coverage ancient genomes. Reserve PSMC for the high-coverage modern sequences; use SMC++ for the ancient dataset.

**C3 [MINOR] JWW not used in Section C Phase 1.** Line [113] still says "Dr Joe Walser III" — should be "JWW" since the abbreviation was introduced earlier in the document (Aim 4, body size sub-aim).

**C4 [MINOR] Relate vs tsinfer — distinction still not explained.** Phase 2 lists both without clarifying how they are used together. Add one sentence.

---

## Section D

**D1 [MODERATE] Tom Gilbert — thin contribution.** Still described as contributing "expertise in animal population genomics and additional sequencing capacity as a fallback." Orlando already provides both. If Gilbert's role is genuinely limited to backup sequencing, consider whether naming him adds value. If he contributes something more specific, make it explicit.

---

## Section E

**E1 [MAJOR] Four-paper hedge.** "Publishing four papers in 36 months is ambitious; Articles 1 and 3 cover closely related questions and could be combined if needed" — this self-doubt undermines the four-paper proposal. Either defend four papers and remove the hedge, or commit to three from the start. The hedge is the worst option.

---

## Section F

**F1 [MINOR] Option 1 missing number** — see T5 above.

**F2 [MINOR] Option 2 — "eight associated horse burials."** No source given. Cite Leifsson (2018) or Eldjárn & Friðriksson (2016).

---

## Bibliography

**Bib1** Eriksson et al. (2008) — no DOI. Two conflicting DOIs appear across versions. Resolve.

**Bib2** Campana et al. (2012) — no DOI. Animal Genetics papers from 2012 all have DOIs; this should be findable.

**Bib3** Rubinacci et al. (2021) — DOI listed is a preprint DOI. Confirm the published-article DOI.

**Bib4** Shrestha et al. (2015) — no DOI listed. Add.

**Bib5** Hreiðarsdóttir et al. (2014) — no DOI listed. Icelandic Agricultural Sciences; check if DOI exists.

**Bib6** Horses of Iceland (n.d.) — no access date. Add.

**Bib7** Rewilding Europe (n.d.) — no access date. Add.

**Bib8** RBST (2024) — URL is a file handler. Verify it resolves and add access date.

**Bib9** Ahmed et al. (under review) — no DOI. If a preprint has been posted, add the DOI now.

**Bib10** FAO FAOSTAT (2024) — cited in text but missing from bibliography entirely (see R3 above).

**Bib11** McGovern et al. (1996) and Smiarowski et al. (2017) — cited in text but missing from bibliography entirely (see R1, R2 above).

---

## Priority ranking

| Priority | Issue |
|---|---|
| 1 | Typos T1–T5 — fix before any version is shared |
| 2 | Missing references R1–R3 (McGovern, Smiarowski, FAO) |
| 3 | Milestone table — check for four-paper consistency (C1) |
| 4 | Four-paper hedge — commit or remove (E1) |
| 5 | Section B dense paragraph — split (B1) |
| 6 | PSMC for low-coverage ancient genomes (C2) |
| 7 | NORD/BRIT bridging sentence (B2) |
| 8 | ARG examples — reframe (A2) |
| 9 | Tom Gilbert — clarify role (D1) |
| 10 | Unused references in bibliography (R4, R5) |
| 11 | JWW not used in Section C (C3) |
| 12 | Body size trend — citation needed (A4) |
| 13 | Weinzerl 2024 — sole source (A5) |
| 14 | All remaining DOIs in bibliography |
