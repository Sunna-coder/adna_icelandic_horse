# To-Do List — Grant Application Finalisation

Two applications in progress:
- **MSCA-PF** (Marie Curie Postdoctoral Fellowship) — deadline September 2026, host: Tom Gilbert, CEH Copenhagen
- **Rannís** (Icelandic Research Fund postdoctoral fellowship) — deadline TBC, base: deCODE Genetics, Reykjavík

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

## Things Claude can work on (once input is provided)

- [ ] Incorporate mapping bash script into methods and pipeline description
- [ ] Fill in full bibliography references for all cited papers
- [ ] Fill in duration/budget placeholders throughout both drafts
- [ ] Strengthen background sections with new papers once added to `background/papers/`
- [ ] Update bibliography with confirmed Pálsdóttir et al. citation and all missing references
- [ ] Draft budget table for Rannís once duration and limits are known
- [ ] Finalise `draftsNew/national_museum_sampling_proposal_updated.md` (one section still pending)
- [ ] Review and tighten Section 1.2 knowledge transfer (MSCA) once Gilbert's input is known

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
