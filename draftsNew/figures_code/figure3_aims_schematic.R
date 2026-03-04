## Figure 3 — Three-aims schematic
## Packages: ggplot2, patchwork
##
## Install once:
## install.packages(c("ggplot2", "patchwork"))

library(ggplot2)
library(patchwork)

# ── HELPER: draw one aims panel ───────────────────────────────────────────────
aims_panel <- function(
    aim_number, title, subtitle, bullets,
    box_fill, title_fill, accent
) {
  # Build bullet text as single string
  bullet_text <- paste0("\u2022 ", bullets, collapse = "\n")

  ggplot() +
    # Outer box
    annotate("rect",
             xmin = 0, xmax = 1, ymin = 0, ymax = 1,
             fill = box_fill, colour = accent, linewidth = 1) +
    # Title bar
    annotate("rect",
             xmin = 0, xmax = 1, ymin = 0.80, ymax = 1,
             fill = title_fill, colour = accent, linewidth = 1) +
    # Aim number tag
    annotate("label",
             x = 0.07, y = 0.90,
             label = aim_number,
             size = 5, fontface = "bold", family = "sans",
             fill = accent, colour = "white",
             label.size = 0, label.padding = unit(0.3, "lines")) +
    # Title
    annotate("text",
             x = 0.55, y = 0.90,
             label = title,
             size = 4.2, fontface = "bold", family = "sans",
             colour = "white", hjust = 0.5, vjust = 0.5) +
    # Subtitle (key question)
    annotate("text",
             x = 0.5, y = 0.73,
             label = subtitle,
             size = 3.0, fontface = "italic", family = "sans",
             colour = "#333333", hjust = 0.5, vjust = 1,
             lineheight = 1.1) +
    # Bullet points
    annotate("text",
             x = 0.06, y = 0.60,
             label = bullet_text,
             size = 2.8, family = "sans",
             colour = "#111111", hjust = 0, vjust = 1,
             lineheight = 1.4) +
    scale_x_continuous(limits = c(0, 1), expand = c(0, 0)) +
    scale_y_continuous(limits = c(0, 1), expand = c(0, 0)) +
    theme_void()
}

# ── AIM 1: ORIGINS ────────────────────────────────────────────────────────────
p1 <- aims_panel(
  aim_number = "AIM 1",
  title      = "ORIGINS & FOUNDING",
  subtitle   = "Who were the founding horses\nand where did they come from?",
  bullets    = c(
    "Settlement-era genomes (870–1000 CE)\ncompared to Scandinavian,\nBritish, and Celtic breeds",
    "Test the 'Celtic pony hypothesis':\ndid Hebridean/Irish ancestry\ncontribute to the founding stock?",
    "Single founding event or\nmultiple immigration waves?",
    "Methods: PCA, ADMIXTURE,\nf-statistics, ADMIXTOOLS2"
  ),
  box_fill   = "#FFF8F0",
  title_fill = "#C97B2A",
  accent     = "#C97B2A"
)

# ── AIM 2: DEMOGRAPHY ─────────────────────────────────────────────────────────
p2 <- aims_panel(
  aim_number = "AIM 2",
  title      = "DEMOGRAPHY & ISOLATION",
  subtitle   = "How did 1,100 years of isolation\nshape the population?",
  bullets    = c(
    "Temporal profiles of inbreeding\n(ROH) and effective population\nsize (PSMC, SMC++)",
    "Did major crises leave\ngenomic signatures?\n\u2013 Black Death (~1402 CE)\n\u2013 Laki famine (1783\u201384 CE)",
    "Kjalvegur specimens dated ~1780\ndirectly capture Laki-era\nhorse mortality",
    "Methods: IBD, ROH,\nPSMC, SMC++"
  ),
  box_fill   = "#F0F7FF",
  title_fill = "#2A6CB5",
  accent     = "#2A6CB5"
)

# ── AIM 3: ADAPTATION ─────────────────────────────────────────────────────────
p3 <- aims_panel(
  aim_number = "AIM 3",
  title      = "ADAPTATION & TRAITS",
  subtitle   = "How did the breed's distinctive\ntraits evolve under isolation?",
  bullets    = c(
    "DMRT3 stop codon (t\u00f6lt):\nwhen did it reach fixation?",
    "PMEL17 Silver/MCOA allele:\nhistory through time",
    "Sweet itch GWAS loci\n(ECA1, ECA3, ECA15,\nECA18, ECA20/MHC)",
    "MHC diversity and longevity:\nbalancing selection or\nfounding diversity?",
    "Methods: XP-EHH, iHS, PBS,\nallele frequency tracking"
  ),
  box_fill   = "#F2FFF4",
  title_fill = "#2A8A3E",
  accent     = "#2A8A3E"
)

# ── DATA FLOW STRIP (top) ─────────────────────────────────────────────────────
header <- ggplot() +
  annotate("rect",
           xmin = 0, xmax = 1, ymin = 0, ymax = 1,
           fill = "#333333", colour = NA) +
  annotate("text",
           x = 0.5, y = 0.6,
           label = "Up to 90 ancient Icelandic horse genomes  \u2022  870\u20131900 CE  \u2022  >35 sites across Iceland",
           size = 3.6, fontface = "bold", colour = "white", family = "sans",
           hjust = 0.5, vjust = 0.5) +
  annotate("text",
           x = 0.5, y = 0.2,
           label = "aDNA extraction  \u2192  Illumina sequencing  \u2192  GLIMPSE2 imputation  \u2192  Population genomic analysis",
           size = 2.8, colour = "#dddddd", family = "sans",
           hjust = 0.5, vjust = 0.5) +
  scale_x_continuous(limits = c(0, 1), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 1), expand = c(0, 0)) +
  theme_void()

# ── COMBINE WITH PATCHWORK ────────────────────────────────────────────────────
layout <- "
AAAA
BCDE
"

# The 'E' slot is a spacer — patchwork will size the three aim panels equally
combined <- (header / (p1 | p2 | p3)) +
  plot_layout(heights = c(0.18, 1)) +
  plot_annotation(
    title   = "Study design: three scientific aims",
    caption = "All three aims use the same imputed ancient genomic dataset generated in Phases 1–2.",
    theme   = theme(
      plot.title   = element_text(size = 13, face = "bold", family = "sans", hjust = 0),
      plot.caption = element_text(size = 8, colour = "grey50", family = "sans", hjust = 0)
    )
  )

print(combined)

# ── SAVE ─────────────────────────────────────────────────────────────────────
ggsave("figure3_aims_schematic.pdf",
       plot = combined, width = 22, height = 16, units = "cm", dpi = 300)
ggsave("figure3_aims_schematic.png",
       plot = combined, width = 22, height = 16, units = "cm", dpi = 300)
message("Saved figure3_aims_schematic.pdf and .png")
