## Figure 2 — Temporal timeline of sampling and key historical events
## Packages: ggplot2, ggrepel
##
## Install once:
## install.packages(c("ggplot2", "ggrepel"))

library(ggplot2)
library(ggrepel)

# ── SPECIMEN DATA ─────────────────────────────────────────────────────────────
# date_min / date_max: calibrated date range in CE years
# date_mid: midpoint used for plotting
# For undated specimens, use the site's general period

specimens <- data.frame(
  site     = c(
    # Settlement-era kuml sites (870–1000 CE)
    "Dalvík/Brimnes",  "Dalvík/Brimnes",      # two specimens
    "Enni",
    "Glaumbær",        "Glaumbær",  "Glaumbær",
    "Stærri-Árskógur",
    "Granastaðir",     "Granastaðir",
    "Grímsstaðir/Mývatn", "Grímsstaðir/Mývatn",
    "Sílastaðir",      "Sílastaðir",
    "Hemla",
    "Traðarholt",
    "Álfsstaðir",
    "Lækur/Flói",
    "Reykjasel",
    "Hrífunes",
    "Hafurbjarnarstaðir",
    # East Iceland — settlement
    "Fjörður/Seyðisfjörður",
    "Papey",
    # West Iceland
    "Böggvisstaðir",
    # Undated settlement-era
    "Sturluflötur",
    "Berufjörður",     # 1898 post-medieval date on inventory
    # Post-medieval
    "Niðurföll",
    "Snæhvammur/Breiðdalur",
    # Laki era
    "Kjalvegur", "Kjalvegur", "Kjalvegur",
    "Kjalvegur", "Kjalvegur",
    "Eyvindarveri",
    "Beinahóll/Kjölur"
  ),
  date_min = c(
    870, 870,
    870,
    800, 800, 800,
    870,
    870, 870,
    870, 870,
    900, 900,
    870,
    870,
    870,
    870,
    800,
    900,
    900,
    870,
    870,
    870,
    870,
    1880,
    1600,
    1840,
    1778, 1778, 1778, 1778, 1778,
    1770,
    1778
  ),
  date_max = c(
    1000, 1000,
    1000,
    1000, 1000, 1000,
    1000,
    1000, 1000,
    1000, 1000,
    1000, 1000,
    1000,
    1000,
    1000,
    1000,
    900,
    950,
    1000,
    1000,
    1000,
    1000,
    1100,
    1900,
    1800,
    1900,
    1785, 1785, 1785, 1785, 1785,
    1774,
    1785
  ),
  region = c(
    "North", "North",
    "North",
    "North", "North", "North",
    "North",
    "North", "North",
    "North", "North",
    "North", "North",
    "South",
    "South",
    "South",
    "South",
    "North",
    "South",
    "North",
    "East",
    "East",
    "West",
    "North",
    "East",
    "South",
    "East",
    "Highlands", "Highlands", "Highlands", "Highlands", "Highlands",
    "Highlands",
    "Highlands"
  ),
  stringsAsFactors = FALSE
)

specimens$date_mid <- (specimens$date_min + specimens$date_max) / 2

# ── HISTORICAL EVENTS ─────────────────────────────────────────────────────────
events <- data.frame(
  year  = c(874, 982, 1402, 1707, 1783, 1900),
  label = c(
    "Norse settlement\n(~874 CE)",
    "Alþingi import ban\n(~982 CE)",
    "Black Death\n(~1402 CE)",
    "Smallpox epidemic\n(1707 CE)",
    "Laki eruption\nand famine\n(1783–84 CE)",
    "Modern breeding\nregistration\n(~1900 CE)"
  ),
  hjust = c(0, 0, 0, 0, 1, 1),   # label alignment: 0=right of line, 1=left
  stringsAsFactors = FALSE
)

# ── REGION COLOURS ────────────────────────────────────────────────────────────
region_colours <- c(
  "North"     = "#4575b4",
  "South"     = "#d73027",
  "East"      = "#1a9850",
  "West"      = "#f46d43",
  "Highlands" = "#762a83"
)

# ── BUILD PLOT ────────────────────────────────────────────────────────────────
# Assign y positions — stagger specimens at similar dates to avoid overlap
set.seed(42)
specimens$y <- ave(specimens$date_mid, cut(specimens$date_mid, 50),
                   FUN = function(x) seq_along(x))

p <- ggplot() +

  # --- shaded time period bands ---
  annotate("rect", xmin = 870,  xmax = 1000, ymin = -Inf, ymax = Inf,
           fill = "#FFF3E0", alpha = 0.6) +
  annotate("rect", xmin = 1000, xmax = 1600, ymin = -Inf, ymax = Inf,
           fill = "#E8F5E9", alpha = 0.4) +
  annotate("rect", xmin = 1600, xmax = 1900, ymin = -Inf, ymax = Inf,
           fill = "#E3F2FD", alpha = 0.5) +
  annotate("text", x = 935,  y = 0.3, label = "Settlement era",
           size = 2.8, colour = "#BF8000", fontface = "italic", family = "serif") +
  annotate("text", x = 1300, y = 0.3, label = "Medieval",
           size = 2.8, colour = "#388E3C", fontface = "italic", family = "serif") +
  annotate("text", x = 1750, y = 0.3, label = "Post-medieval",
           size = 2.8, colour = "#1565C0", fontface = "italic", family = "serif") +

  # --- historical event lines ---
  geom_vline(data = events, aes(xintercept = year),
             linetype = "dashed", colour = "#555555", linewidth = 0.5) +
  geom_text(data = events,
            aes(x = year, y = max(specimens$y) + 0.8, label = label, hjust = hjust),
            size = 2.3, colour = "#333333", family = "serif", lineheight = 0.85) +

  # --- specimen ranges as horizontal segments ---
  geom_segment(
    data = specimens,
    aes(x = date_min, xend = date_max, y = y, yend = y, colour = region),
    linewidth = 1.2, alpha = 0.7
  ) +

  # --- midpoint dots ---
  geom_point(
    data = specimens,
    aes(x = date_mid, y = y, colour = region),
    size = 2, shape = 19
  ) +

  scale_colour_manual(values = region_colours, name = "Region") +

  scale_x_continuous(
    breaks = seq(900, 1900, by = 100),
    limits = c(840, 1930),
    expand = c(0, 0)
  ) +
  scale_y_continuous(expand = expansion(mult = c(0.02, 0.15))) +

  labs(
    title    = "Temporal distribution of ancient Icelandic horse specimens",
    subtitle = "Horizontal bars show calibrated date ranges; dots = midpoint estimate",
    x        = "Year CE",
    y        = NULL,
    caption  = "Date ranges are approximate. Calibrate against museum records before final submission."
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    plot.title      = element_text(size = 13, face = "bold"),
    plot.subtitle   = element_text(size = 9, colour = "grey40"),
    plot.caption    = element_text(size = 7, colour = "grey60", face = "italic"),
    axis.text.y     = element_blank(),
    axis.ticks.y    = element_blank(),
    panel.grid.major.y = element_blank(),
    panel.grid.minor   = element_blank(),
    legend.position    = "bottom",
    legend.title       = element_text(size = 9, face = "bold"),
    legend.text        = element_text(size = 8)
  )

print(p)

# ── SAVE ─────────────────────────────────────────────────────────────────────
ggsave("figure2_timeline.pdf", plot = p, width = 22, height = 12, units = "cm", dpi = 300)
ggsave("figure2_timeline.png", plot = p, width = 22, height = 12, units = "cm", dpi = 300)
message("Saved figure2_timeline.pdf and .png")
