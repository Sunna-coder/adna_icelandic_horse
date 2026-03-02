# Part B-1 — Section 3: Implementation

*First draft — preliminary. To be revised after review by Sunna and Hannes.*
*Target length: ~3 pages in final formatted document.*

---

## 3.1 Work Plan

The project runs for **24 months**, divided into five work packages (WPs). The first six months are dedicated to sample processing and laboratory work carried out at the deCODE Genetics aDNA facility in Reykjavík, accessible to the applicant through a collaboration agreement with deCODE Genetics; months 7–24 are based at the Centre for Evolutionary Hologenomics (CEH), GLOBE Institute, University of Copenhagen, with research visits to the deCODE facility and the National Museum of Iceland as needed.

[Claude comment: Please confirm the structure of months 1–6. Are you formally based at the University of Copenhagen from the start of the fellowship and making research visits to Iceland for laboratory work, or are you formally based in Iceland for that period under a secondment arrangement? MSCA-PF European Fellowships require the fellow to be based at the host institution — so if months 1–6 involve extended stays in Iceland, this may need to be structured as a research visit or secondment rather than the primary base. Worth checking with Hannes how to frame this for the application.]

### Work Packages

**WP1 — Sample selection, extraction, and library preparation** (Months 1–7)

The project opens with an intensive laboratory phase at the deCODE Genetics aDNA facility, Reykjavík. Drawing on the existing permission for 22 settlement-era specimens and the pending expanded permission covering up to 90 specimens, Sunna will assess available bone and tooth material at the National Museum of Iceland, select the optimal specimens for aDNA work, and carry out DNA extraction and library preparation. Existing sequencing libraries for 7 samples (VHR031, VHR085, VHR089, VHR093, VHR100, VHR102, VHR105) will be assessed and incorporated. Initial shallow sequencing (MiSeq) will be used to screen all libraries for endogenous DNA content before committing samples to deep sequencing.

*Milestone M1.1* (Month 3): At least 30 libraries prepared and quality-assessed.
*Milestone M1.2* (Month 7): All libraries prepared; samples selected for deep sequencing.

**WP2 — Sequencing, bioinformatic processing, and imputation** (Months 4–14)

Deep sequencing will be performed on the Illumina NovaSeq platform at the deCODE Genetics sequencing facility (Months 4–10). Bioinformatic processing — adapter trimming, mapping to EquCab3, deduplication, mapDamage rescaling — will run in parallel with sequencing. Samples meeting the quality threshold (>1% endogenous, characteristic damage patterns) will be imputed using GLIMPSE2 and the Orlando laboratory reference panel (Months 10–14), with analyses running on the computational infrastructure at CEH. This WP bridges the laboratory phase in Iceland and the analytical phase in Copenhagen, and will involve close coordination with the Orlando laboratory.

*Milestone M2.1* (Month 10): At least 50 mapped and quality-filtered genomes available.
*Milestone M2.2* (Month 14): Full imputed dataset assembled; ready for population genomic analysis.

**WP3 — Population structure and ancestry analysis** (Months 10–20)

Using the imputed dataset, Sunna will carry out the analyses addressing Objectives 1 and 2: PCA, ADMIXTURE, f-statistics, admixture graph modelling, IBD analysis, ROH quantification, and demographic modelling. Results will be interpreted against the Orlando laboratory's global horse reference dataset. This WP will run partly in parallel with WP2, beginning as the first imputed genomes become available.

*Milestone M3.1* (Month 16): Preliminary ancestry and demographic results; internal seminar presentation at CEH.
*Milestone M3.2* (Month 20): Complete population genomic analysis; first manuscript drafted.

**WP4 — Selection scans and trait-associated variant analysis** (Months 14–22)

Genome-wide selection scans will identify signatures of adaptation specific to the Icelandic lineage. Targeted analysis of known functional variants (DMRT3, coat colour loci, metabolic and immune-related variants) will characterise the evolution of the breed's distinctive traits under isolation. This WP addresses Objective 3 and will draw on horse functional genomics expertise from the Orlando laboratory.

*Milestone M4.1* (Month 20): Selection scan results complete.
*Milestone M4.2* (Month 22): Second manuscript drafted.

**WP5 — Dissemination and communication** (Months 18–24)

Final manuscript preparation, conference presentations, public engagement activities, and data deposition. Both primary research articles are submitted to peer-reviewed journals. Genomic data are deposited in ENA; pipelines released on GitHub.

*Milestone M5.1* (Month 22): Both manuscripts submitted.
*Milestone M5.2* (Month 24): All data deposited; public engagement activities completed.

---

### Gantt Chart

```mermaid
gantt
    title MSCA-PF Work Plan (24 months, start assumed Sept 2027)
    dateFormat YYYY-MM
    axisFormat Month %m

    section WP1 – Sample prep
    Sample selection, extraction & library prep   :wp1, 2027-09, 7M

    section WP2 – Sequencing & imputation
    Deep sequencing (NovaSeq, deCODE facility)    :wp2a, 2027-12, 6M
    Bioinformatics processing & imputation        :wp2b, 2028-05, 5M

    section WP3 – Population genomics
    Ancestry, demography & IBD analysis           :wp3, 2028-05, 10M

    section WP4 – Traits & selection
    Selection scans & variant analysis            :wp4, 2028-10, 8M

    section WP5 – Dissemination
    Manuscripts, conferences & public engagement  :wp5, 2029-02, 6M

    section Location
    Laboratory phase (deCODE aDNA facility, Reykjavík)        :crit, loc1, 2027-09, 6M
    CEH, GLOBE Institute, Copenhagen (+ visits to Iceland)    :active, loc2, 2028-03, 18M
```

---

## 3.2 Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Low endogenous DNA yield from some specimens | Medium | Medium | Large initial sample pool (up to 90 specimens); existing 7 libraries with confirmed yield; National Museum backup list provides additional candidates |
| Delayed access to remaining National Museum samples | Low | Medium | 22 specimens already permitted; sampling proposal for remaining specimens submitted in parallel with this application; curator has indicated further permission will be granted |
| Gilbert letter of support delayed | Low | High | Active ongoing collaboration; pre-existing relationship between applicant and CEH makes this unlikely |
| Imputation quality insufficient for low-coverage samples | Low | Medium | GLIMPSE2 has been validated for ancient horse genomes at 0.5–2× coverage using this reference panel; fallback: pseudohaploid calling for individuals with very low coverage |
| Delays in sequencing pipeline at deCODE | Low | Low | deCODE operates its own Illumina sequencing facility with substantial capacity accessible under the collaboration agreement; samples can be outsourced to external providers if needed |
| Data deposition restrictions from deCODE | Low | Medium | Standard deCODE data sharing protocols apply; genomic data from horse specimens do not fall under human data protection rules; will be confirmed before submission |

---

## 3.3 Resources

**Host institution infrastructure**

The Centre for Evolutionary Hologenomics (CEH), GLOBE Institute, University of Copenhagen provides:

[Claude comment: Please describe what Tom Gilbert's group / CEH specifically provides for this project — e.g., computing infrastructure, aDNA facilities, analytical expertise, relevant reference datasets, or other resources. This section currently lacks substance because I don't want to invent capabilities. A few bullet points from you will allow this to be written accurately.]

**External collaboration — Orlando laboratory (CAGT, Toulouse)**

Prof. Ludovic Orlando's laboratory at the Centre for Anthropobiology and Genomics of Toulouse contributes:
- The ancient horse imputation reference panel (>900 genomes) and all associated bioinformatic pipelines
- Expert scientific input on horse-specific population genomic analyses, selection scans, and trait variant interpretation
- Access to comparative ancient and modern horse datasets for global ancestry analyses

**Applicant's institutional resources**

Through an ongoing collaboration agreement with deCODE Genetics, Reykjavík, Dr Ebenesersdóttir retains access to:
- The dedicated aDNA clean-room laboratory at deCODE Genetics — a facility in which the applicant developed the aDNA protocols and remains the primary user
- Illumina sequencing infrastructure (NovaSeq, HiSeq, MiSeq)
- The deCODE biobank and population genomic databases for comparative analyses
- The National Museum of Iceland horse specimen collection

**Equipment and consumables**

Standard molecular biology consumables (extraction kits, library preparation reagents, sequencing reagents) will be budgeted within the MSCA fellowship grant. No major equipment purchases are required; all key instruments are already available at the host and partner institutions.

**Secondments and research visits**

The project design includes regular visits between Copenhagen and Reykjavík to ensure continuity of laboratory access. A total of [X] months of research visits to the deCODE Genetics facility and the National Museum of Iceland are planned and budgeted within the fellowship.
