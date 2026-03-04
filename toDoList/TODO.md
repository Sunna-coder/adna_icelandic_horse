# To-Do List — Grant Application Finalisation

Three applications in progress:
- **MSCA-PF** (Marie Curie Postdoctoral Fellowship) — deadline September 2026, host: Tom Gilbert, CEH Copenhagen
- **Rannís** (Icelandic Research Fund postdoctoral fellowship) — deadline TBC, base: deCODE Genetics, Reykjavík
- **Nýdoktorsstyrkur** (University of Iceland postdoctoral grant) — 2026 deadline TBC (~April–May 2026); adapt from Rannís draft once finalised. See `draftsNew/nyDoktorsstyrkur_notes.md`

**Order of work**: Finish Rannís → adapt for Nýdoktorsstyrkur → finalise MSCA-PF

---

## Things Sunna needs to do or provide

### High priority

- [ ] **Confirm Rannís duration and budget limits**
  Look up the current Rannís postdoctoral fellowship guidelines.
  How many years (1, 2, or 3)? What is the maximum budget?
  This affects milestones, submission targets, and the budget section throughout the draft.
  → Placeholders marked `[X]` in `draftsNew/rannis_draft1.md` are waiting for this.

- [ ] **Provide the horse mapping bash script**
  The script used for mapping horse reads at deCODE (for Ahmed et al.).
  Claude will use this to verify the methods section and update the pipeline description.

- [ ] **Check status of Ahmed et al. manuscript**
  Is it still "under review" or has it been accepted/published?
  This changes how it is cited in both applications.

### Letters of support

- [ ] **Send Gilbert host letter to Tom Gilbert for signature**
  File: `draftsNew/gilbert_host_letter.md`
  Tom Gilbert needs to review, edit, and return it on CEH/GLOBE Institute letterhead.

- [ ] **Send Orlando collaborator letter to Ludovic Orlando for signature**
  File: `draftsNew/orlando_letter_of_support_updated.md`
  Orlando needs to review, edit, and return it on CAGT/University of Toulouse letterhead.

### Documents to gather

- [ ] **Confirm deCODE collaboration contract exists in writing**
  The Rannís draft states "a copy of the collaboration agreement will be included in the application."
  Make sure this document is finalised and ready to attach.

### Additional references

- [ ] **Confirm Pálsdóttir et al. full reference** — DONE (see below)
  Full citation confirmed: Nistelberger HM, Pálsdóttir AH, Star B, Leifsson R, Gondek AT, Orlando L, Barrett JH, Hallsson JH, Boessenkool S (2019). Sexing Viking Age horses from burial and non-burial sites in Iceland using ancient DNA. *Journal of Archaeological Science* 101:115–122. doi:10.1016/j.jas.2018.11.007

- [ ] **Add missing papers to `background/papers/`**
  The following papers are critical for strengthening the background sections and must be added as PDFs.
  Claude will read them and update the proposal text once they are in the folder.
  See `toDoList/background_papers_review.md` for full details on why each is needed.

  **Must have — directly cited or essential:**
  - [ ] Fages et al. (2019). Tracking Five Millennia of Horse Management with Extensive Ancient Genome Time Series. *Cell* 177:1419–1435. doi:10.1016/j.cell.2019.03.049
    *(Orlando lab's major ancient horse genome paper — direct precursor to Ahmed et al.)*
  - [ ] Andersson LS et al. (2012). Mutations in DMRT3 affect locomotion in horses and spinal circuit function in mice. *Nature* 488:642–646. doi:10.1038/nature11399
    *(THE paper on DMRT3 and the tölt/pace gaits — essential for Aim 3)*
  - [ ] Librado P et al. (2021). The origins and spread of domestic horses from the Western Eurasian steppes. *Nature* 598:634–640. doi:10.1038/s41586-021-03867-0
    *(Already cited in draft — PDF missing from folder)*
  - [ ] Gaunitz C et al. (2018). Ancient genomes revisit the ancestry of domestic and Przewalski's horses. *Science* 360:111–114. doi:10.1126/science.aao3297
    *(Major paper on deep horse ancestry — important context for Section B)*
  - [ ] Rubinacci S et al. (2022). Efficient phasing and imputation of low-coverage sequencing data using large reference panels. *Nature Genetics* 53:120–130.
    *(The GLIMPSE2 imputation paper — cited throughout the proposal but not in bibliography)*

  **Should have — strengthens specific sections:**
  - [ ] Petersen JL et al. (2013). Genetic diversity in the modern horse illustrated from genome-wide SNP data. *PLOS ONE* 8(1):e54997. doi:10.1371/journal.pone.0054997
    *(Modern horse genomic diversity baseline — context for what makes Icelandic horse distinctive)*
  - [ ] Warmuth V et al. (2012). Reconstructing the origin and spread of horse domestication in the Eurasian steppe. *PNAS* 109:8202–8206.
    *(Complements Librado 2021 in the domestication background)*

### Figures (for both applications)

Five figures are outlined in `draftsNew/figures_and_pipeline.md`.
These can be made in PowerPoint, Illustrator, or similar tools.

- [ ] **Figure A** — Map of Iceland with sampling site locations, colour-coded by time period
- [ ] **Figure B** — Temporal timeline 870–1900 CE with sampled individuals and key historical events
- [ ] **Figure C** — Three-aims schematic (Origins / Demography / Adaptation)
- [ ] **Figure D** — World/Eurasia map showing global horse genomics studies — Iceland as the gap
- [ ] **Figure E** — Knowledge transfer diagram: Sunna ↔ CEH ↔ Orlando (MSCA-specific)

---

## [Claude comment] flags in the draft files — things Sunna needs to answer

These are questions embedded directly in the draft files. Claude cannot fill these in without your input. Work through them before the final revision pass.

### `draftsNew/rannis_draft1.md` (17 comments)

Note: line numbers are approximate — they shift as the file is edited. Search for `[Claude comment` to find all flags.

| Approx. line | Section | What is needed |
|---|---|---|
| ~14 | Top of draft | Confirm Rannís fellowship duration (1, 2, or 3 years?) and maximum budget — affects all `[X]` placeholders |
| ~50 | A.3 Feasibility | How many sites are represented in the specimen collection? Geographic spread across Iceland? |
| ~53 | A.3 Feasibility | Confirm whether the deCODE collaboration agreement is fully signed/formalised — affects how this paragraph should be worded |
| ~74 | A.5 Impact | Do you have contacts with the Icelandic horse breeders' association (FEIF or Icelandic) for a letter of support? |
| ~111 | B.4 Imputation | Confirm whether GLIMPSE or GLIMPSE2 will be used — need consistent citation throughout |
| ~133 | C.2 Phase 1 | Confirm what contamination estimation step is used for horse specimens in the deCODE pipeline — a sentence on this is expected by reviewers |
| ~144 | C.2 Phase 3 | Can you name specific candidate loci for sweet itch / metabolic sensitivity? If not, a citation for a GWAS study would make this sentence more credible |
| ~150 | C.2 ADMIXTOOLS2 | Does ADMIXTOOLS2 have its own publication separate from Patterson et al. 2012? |
| ~152 | C.2 hap-IBD | Verify hap-IBD citation: Zhou Y, Browning SR, Browning BL (2020). Am J Hum Genet 106:426–437. doi:10.1016/j.ajhg.2020.02.010 |
| ~190 | D.1 Leadership | Add 1–2 sentences on Agnar Helgason's specific publications / expertise in isolated population genetics |
| ~194 | D.2 Collaboration | Name a specific Museum curator contact; do you have (or can you get) a letter of support from the Museum? |
| ~196 | D.2 Collaboration | What specifically does the University of Iceland provide beyond institutional affiliation? |
| ~198 | D.2 deCODE | Confirm deCODE collaboration agreement is fully signed — the current text says "a copy will be included in the application" which requires an attached document |
| ~250 | G Career | Confirm PhD completion year and university |
| ~254 | G Career | Any specific conferences you regularly attend or plan to attend? |
| ~310 | Bibliography | Warmuth et al. 2012 is in the bibliography but not cited in the text — either add an in-text citation in B.2 or remove it |
| ~311 | Bibliography | Clarify what "Leifsson (2018)" refers to — not found as standalone reference; may be confused with Nistelberger et al. 2019 |
| ~320 | Bibliography | Verify and add GLIMPSE2 citation (Rubinacci et al. 2023, Nature Genetics) |

### `draftsNew/section1_excellence_updated.md` (1 comment)

| Line | Section | What is needed |
|---|---|---|
| 28 | 1.2 MSCA | What do you expect to gain specifically from Tom Gilbert's group at CEH? Methods, data, expertise? |

### `draftsNew/national_museum_sampling_proposal_updated.md` (3 comments)

| Line | What is needed |
|---|---|
| 29 | Review how your relationship with deCODE is described — is the framing accurate? |
| 163 | Did you establish and/or maintain the deCODE aDNA lab? Confirm how to describe your role |
| 201 | What address and affiliation should appear on the proposal signature block? |

---

## Things Claude can work on (once input is provided)

- [ ] Incorporate mapping bash script into methods and pipeline description
- [ ] Fill in full bibliography references for all cited papers
- [ ] Fill in duration/budget placeholders throughout both drafts
- [ ] Strengthen background sections with new papers once added to `background/papers/`
- [ ] Update bibliography with confirmed Pálsdóttir et al. citation and all missing references
- [ ] Draft budget table for Rannís once duration and limits are known
- [ ] Finalise `draftsNew/national_museum_sampling_proposal_updated.md` (one section still pending)
- [ ] Review and tighten Section 1.2 knowledge transfer (MSCA) once Gilbert's input is known
- [ ] Adapt Rannís draft for Nýdoktorsstyrkur online form (do this after Rannís is finalised)

---

## Nýdoktorsstyrkur — things Sunna needs to do

- [ ] **Check grant page from March 2026** for 2026 round opening and deadline
  URL: https://english.hi.is/research/funds-and-grants/internal-grants/post-doc-grants
- [ ] **Email rannsoknasjodir@hi.is** to confirm 2026 deadline and request the statement of support template (.docx)
- [ ] **Arrange two reference letter writers** — referees email their letters directly to rannsoknasjodir@hi.is
- [ ] **Get statement of support** from your faculty/institute at University of Iceland
  (Confirm whether this should come from the Faculty of Social and Human Sciences or elsewhere given that the lab work is at deCODE)

---

## Files overview

| File | Description | Status |
|---|---|---|
| `draftsNew/rannis_draft1.md` | Full Rannís grant draft (Sections A–G) | Draft complete — duration/budget placeholders remain |
| `draftsNew/section1_excellence_updated.md` | MSCA Part B-1, Section 1 (Excellence) | Draft complete |
| `draftsNew/section2_impact_updated.md` | MSCA Part B-1, Section 2 (Impact) | Draft complete |
| `draftsNew/section3_implementation_updated.md` | MSCA Part B-1, Section 3 (Implementation) | Draft complete |
| `draftsNew/gilbert_host_letter.md` | Host letter — Tom Gilbert / CEH | Draft ready — needs Gilbert's signature |
| `draftsNew/orlando_letter_of_support_updated.md` | Collaborator letter — Ludovic Orlando | Draft ready — needs Orlando's signature |
| `draftsNew/national_museum_sampling_proposal_updated.md` | Sampling proposal for National Museum of Iceland | Nearly complete — one section pending |
| `draftsNew/figures_and_pipeline.md` | Pipeline flowchart + figure suggestions | Complete |
| `draftsNew/README_updated.md` | Updated project README | Complete — review before replacing README.md |
| `pipeline/aDNApipe_horse_EquCab3_source.sh` | Horse-specific pipeline config file (EquCab3) | Template complete — paths to be filled in |
| `draftsNew/nyDoktorsstyrkur_notes.md` | Notes on University of Iceland postdoc grant | Complete — adapt from Rannís once finalised |
