# Claude Session Notes — How to Resume Where We Left Off

*Last updated: 2026-03-22*

## Current working version
- **Grant draft: `draftsNew/rannis_draft1_v20.md`**
- This is the active Rannís draft. All edits discussed in recent sessions are in this file.

## What was done in the most recent sessions

### Text edits made to v20 (already in the file)
- EMS/metabolic disease paragraph added to Aim 3 (after IBH section)
- Narcolepsy paragraph added to end of Section B ("What is known about the Icelandic horse")
- FEIF paragraph added to Impact section (with founding years: FEIF 1969, Landssamband 1949)
- WorldFengur numbers updated: 354,000 total registered / 220,168 living as of 2010 (Lorange 2011) — replaces the "300,000" figure from Sigurðardóttir et al.
- Conservation/rewilding paragraph added to Impact

### Text edits discussed but NOT YET in the file (still to implement)
These were agreed in conversation but Sunna is editing her own working copy:
1. **Aim 1 paragraph** — add Petersen et al. (2013) + Ahmed et al. BRIT sentence about shared ancestry with Shetland/Dartmoor/Exmoor after the Fages et al. phylogenetic sentence
2. **"Celtic" removal** — replace all instances of "Celtic" with "British Isles" or "horses from Britain and Ireland" (check full document)
3. **Modern horse sequencing (100–150)** — three insertion points agreed:
   - Aim 2: after "current effective population size stands at 125 individuals (Sigurðardóttir et al., 2024)"
   - Originality/Temporally paragraph: replace Sigurðardóttir sentence with new version covering 100–150 WGS horses
   - Section D (Björnsdóttir): replace vague sentence with concrete 100–150 sequencing plan
4. **Title** — agreed title: *"Born of Vikings: the genomic history of the Icelandic horse from settlement to the present day"* — not yet added to file
5. **Landnámabók paragraph** — revised version agreed, check if in file
6. **Cultural heritage paragraph** — Norse religion/Sleipnir addition agreed, check if in file

## New files created this session
- `draftsNew/ahmed_panel_relevant_samples.md` — tables of WGS modern breeds and ancient specimens from Ahmed et al. panel relevant to Icelandic horse origins
- `figures_code/ahmed_panel_map.R` — R script to generate map figure (Figure 1 for grant)

## Figure to do
- Run `figures_code/ahmed_panel_map.R` in R to generate the map
- Requires packages: `ggplot2`, `rnaturalearth`, `rnaturalearthdata`, `sf`, `dplyr`
- Edit labels in Inkscape (free, download at inkscape.org) after saving as PDF
- Add as Figure 1 in grant with caption: *"Geographic distribution of modern breeds and ancient whole-genome specimens from the Ahmed et al. (under review) reference panel relevant to Aim 1. Circles indicate modern breeds; triangles indicate ancient specimens providing Viking Age temporal comparators. No ancient horse genome data exist from Iceland, the Faroe Islands, or Norway."*

## Key scientific facts to remember
- Ahmed et al. reference panel: 901 modern + 376 ancient horse genomes
- Modern Icelandic horses in panel: n=4 only (ICLN1–4)
- **No Norwegian ancient specimens anywhere in the panel** — key gap for Aim 1
- Viking Age comparators in panel: Orkney/Scotland 600 CE (n=3), York 956 CE (n=1), Denmark 862 CE (n=1), Sweden 495 CE (n=1), Estonia 832–858 CE (n=2), Lithuania 829–937 CE (n=4)
- VHR031 (Granastaðir, 0.08x) and VHR102 (Berufjörður, 0.18x) — only published ancient Icelandic horse genomes (Fages et al. 2019), NOT in Ahmed panel
- Modern horse sequencing plan: 100–150 present-day Icelandic horses, subset at high coverage for imputation panel, remainder low-coverage imputed

## How to start a new Claude session

1. Open a terminal and navigate to the project:
   ```
   cd /home/sigridse/projects/adna_icelandic_horse
   ```
2. Start Claude Code by typing:
   ```
   claude
   ```
3. Paste this as your first message:
   > "I am working on a Rannís postdoctoral fellowship grant on ancient DNA from Icelandic horses. The current draft is draftsNew/rannis_draft1_v20.md. Please read the file draftsNew/claude_session_notes.md for context on where we left off, then read the current draft."

Claude will read both files and be up to speed without you needing to explain the project from scratch.

## Pending verifications (things to check before submission)
- [ ] Bjørnstad 2000 vs 2003 — which is correct citation?
- [ ] Extraction protocol paper (Science 2018 supplementary)
- [ ] Number of Viking Age specimens in Orlando panel — confirm against data file
- [ ] Skriðuklaustur horse remains — confirm in sampling list
- [ ] deCODE agreement status — still being finalised
- [ ] Site count (>50 confirmed?)
- [ ] PhD award year (2023?)
- [ ] All "Celtic" instances removed from v20
