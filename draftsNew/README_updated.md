# Ancient Horse Genomics of Iceland — Grant Applications

This repository contains the working files for two parallel grant applications:

1. **MSCA-PF** — Marie Curie Postdoctoral Fellowship (European Commission), target deadline September 2026
2. **Rannís** — Icelandic Research Fund application (target deadline TBD)

**Applicant**: Sigríður Sunna Ebenesersdóttir, Adjunct Professor, University of Iceland
**MSCA host**: Prof. Tom Gilbert, Centre for Evolutionary Hologenomics (CEH), GLOBE Institute, University of Copenhagen
**Key scientific collaborator**: Prof. Ludovic Orlando, CAGT, University of Toulouse (horse genomics, imputation reference panel)
**deCODE collaboration**: Ongoing collaboration agreement giving access to aDNA clean-room laboratory and Illumina sequencing infrastructure

---

## Project in One Paragraph

Sigríður Sunna Ebenesersdóttir will use ancient DNA from up to 90 archaeological horse specimens held at the National Museum of Iceland to reconstruct the genomic history of the Icelandic horse — one of the most isolated domestic animal populations in the world. By spanning the Norse settlement period (~870 CE) through to ~1900 CE, the study will reconstruct the founding of the population, track 1,100 years of demographic change under isolation, and identify genomic signatures of local adaptation and selective breeding. The project draws on aDNA protocols developed by the applicant and applied at the deCODE Genetics facility in Reykjavík, and on the world's largest ancient horse imputation reference panel (Orlando laboratory, Toulouse).

---

## Folder Structure

### `specs/` — Project specifications *(Hannes + Sunna own)*
Defines what should be written. Claude works from these but does not alter them without explicit permission.

- `PLAN.md` — Master plan, phases, and critical timelines
- `project_concept.md` — Title, three aims, methodology, key decisions
- `scientific_background.md` — Key facts and claims to draw on when drafting
- `section_briefs/` — Per-section instructions for Claude
- `phases/` — Phase-specific task lists

### `drafts/` — Original application text drafts *(Claude edits freely)*
First-pass section drafts.

- `section1_excellence.md` — Part B-1 Section 1 (Excellence)
- `section2_impact.md` — Part B-1 Section 2 (Impact)
- `section3_implementation.md` — Part B-1 Section 3 (Implementation)
- `national_museum_sampling_proposal.md` — Sampling permission request
- `orlando_letter_of_support.md` — Original host letter draft (Orlando as host — now outdated)

### `draftsNew/` — Revised drafts *(Claude edits freely)*
Updated versions of all drafts reflecting the correct affiliations and host:
- University of Iceland as Sunna's primary affiliation
- deCODE Genetics as collaboration access (not employer)
- Tom Gilbert (CEH, Copenhagen) as primary MSCA host
- Ludovic Orlando as key external scientific collaborator

- `section1_excellence_updated.md`
- `section2_impact_updated.md`
- `section3_implementation_updated.md`
- `national_museum_sampling_proposal_updated.md` *(Tom Gilbert not yet incorporated — in progress)*
- `orlando_letter_of_support_updated.md` *(needs rewrite as collaborator letter — in progress)*

### `background/` — Reference material *(read-only, not in git)*
All original source documents. Never edited — source of truth for facts and context.

```
background/
├── project_concept/        Early project narrative
│   └── icelandic_horse.docx
├── own_work/               Sunna's published papers and manuscripts
│   ├── science.pdf                         Ebenesersdóttir et al. 2018 (Science) — 88 ancient Icelandic human genomes
│   ├── aar2625-ebenesersdottir-sm.pdf      Supplementary material for Science 2018
│   └── Iceland2_manuscript.docx            Draft: 201 ancient Icelandic human genomes (methods precedent)
├── sample_inventory/       Archaeological horse specimens and sampling logistics
│   ├── Horses.docx                         Full catalogue of National Museum horse specimens
│   ├── horse_samples_decode.docx           Status of 7 existing aDNA libraries with endogenous %
│   ├── summary_sites_120625.docx           Archaeological site descriptions
│   └── Request for sampling.docx           Earlier draft sampling permission request
├── papers/                 Scientific reference papers
│   ├── sexing_icelandicHorses_Palsdottir.pdf     Prior aDNA work on Icelandic horses
│   ├── The_Horse_and_the_Norse_Reconstructing_t.pdf
│   ├── 1-s2.0-S0305440318305533-main.pdf
│   ├── 1471-2156-7-46.pdf                        BMC Genetics — horse breed structure
│   ├── 1746-6148-7-21.pdf                        BMC Veterinary Research — horse health genetics
│   └── J Animal Breeding Genetics - 2001 - Bjørnstad...pdf
├── people/                 CVs and collaborator profiles
│   ├── CV_Ebenesersdottir_2026.doc
│   └── Ludovic_Orlando.docx
├── fellowship_examples/    Reference applications to guide format and tone
│   ├── MONNEREAU_MSCA_IF_THAIS_2022.pdf    Primary format reference
│   ├── SCHROEDER_MC_IF_ROOTS_PARTB_2008.pdf
│   ├── SCHROEDER_MC_IOF_CARIB_PARTB_2013.pdf
│   └── Collins-Postdoctoral-fellowship-2025.pdf
├── data/
│   └── mergeInfofreeze_horsesIceland.xlsx  Existing Icelandic horse genomic data
├── pipeline/
│   └── aDNAfastqMAPpe.sh   Paired-end aDNA processing pipeline
├── previous_applications/
│   └── UmsoknEimskipasjodur.docx           Previous Icelandic-language funding application
├── Ahmed_et_al/            Sunna + Orlando co-authored paper (under review)
└── MSCAs/                  Original MSCA example PDFs
```

### `pipeline/` — Bioinformatics scripts *(Claude edits with explicit permission)*

---

## Editing Rules

| Location | Owner | Claude may edit? |
|---|---|---|
| `README.md` | Hannes + Sunna | Only with explicit permission |
| `specs/` | Hannes + Sunna | Only with explicit permission |
| `background/` | Nobody — read-only | Never |
| `pipeline/` | Hannes + Sunna | Only with explicit permission |
| `drafts/` | Claude | Freely |
| `draftsNew/` | Claude | Freely |

---

## GitHub Collaboration

This repository is tracked in git. **`background/` is not tracked** (see `.gitignore`) because it contains large binary files. When setting up on a new machine:

1. Clone: `git clone https://github.com/hanneshelgason/adna_icelandic_horse.git`
2. Get background files from shared Google Drive and place in `background/`
3. Recreate the subfolder structure above and distribute files accordingly
4. `specs/`, `drafts/`, `draftsNew/`, and `pipeline/` are fully tracked and will be current

---

## Current Status

**Phase**: Phase 1 (Preparation) — moving into drafting

**Completed**:
- Background files read and organised into subfolders
- First drafts of all MSCA Part B-1 sections
- Revised drafts in `draftsNew/` incorporating correct affiliations

**Open items**:
- Finish updating `national_museum_sampling_proposal_updated.md` (add Tom Gilbert)
- Rewrite `orlando_letter_of_support_updated.md` as collaborator letter
- Draft host letter from Tom Gilbert (new primary MSCA host)
- Clarify what CEH/Gilbert's lab contributes scientifically (for Section 1.2)
- Confirm logistics for months 1–6 of MSCA (Iceland lab phase and formal base)
- Rannís application: confirm structure, deadline, word limits
- Begin Rannís draft

See `specs/PLAN.md` for full phase overview and milestone dates.
