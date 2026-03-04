## Figure 1 — Map of Iceland with horse sampling sites
## Packages: ggplot2, sf, rnaturalearth, rnaturalearthdata, ggrepel
##
## Install once:
## install.packages(c("ggplot2", "sf", "rnaturalearth", "rnaturalearthdata", "ggrepel"))

library(ggplot2)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggrepel)

# ── SITE DATA ─────────────────────────────────────────────────────────────────
# Coordinates are approximate. Verify against museum database before
# final submission. Marked with * where confidence is lower.
#
# Period categories:
#   "Settlement (870–1000 CE)"
#   "Medieval (1000–1600 CE)"
#   "Post-medieval (1600–1900 CE)"
#   "Laki era (~1780 CE)"      ← separate category to highlight Aim 2
#   "Undated"

sites <- data.frame(
  site    = c(
    # NORTH
    "Dalvík/Brimnes",      # Eyjafjörður — well-known site
    "Enni",                # Viðvíkurhreppur, Skagafjörður
    "Glaumbær",            # Skagafjörður — famous folk museum
    "Stærri-Árskógur",     # Árskógsströnd, Eyjafjörður
    "Granastaðir",         # Þingeyjarsýsla *
    "Grímsstaðir/Mývatn",  # Skútustaðahreppur
    "Sílastaðir",          # Glæsibæjarhreppur *
    "Sturluflötur",        # *
    # SOUTH
    "Hemla",               # Landeyjahreppur
    "Traðarholt",          # south Iceland *
    "Ytra-Garðshorn",      # *
    "Mörk",                # Landmannahreppur
    "Niðurföll",           # near Þykkvabæjarklaustur
    "Lækur/Flói",          # Hraungerðishreppur
    "Álfsstaðir",          # *
    # EAST
    "Berufjörður",         # east fjords
    "Snæhvammur/Breiðdalur", # east Iceland
    "Papey",               # island off east coast
    "Fjörður/Seyðisfjörður", # east Iceland
    # WEST / WESTFJORDS
    "Barðastrandarsýsla",  # Westfjords *
    "Böggvisstaðir",       # Borgarfjörður area *
    "Leynir",              # cave site *
    # HIGHLANDS — Laki era
    "Kjalvegur (1780)",    # highland route, Laki-period
    "Eyvindarveri (1772)"  # highland
  ),
  lon = c(
    # NORTH
    -18.53, -19.83, -19.51, -18.28,
    -17.20, -17.03, -17.35,
    -19.00,
    # SOUTH
    -20.30, -20.20, -20.50,
    -19.70, -18.17, -21.10,
    -19.90,
    # EAST
    -14.40, -14.65, -14.18, -14.01,
    # WEST
    -23.40, -21.70, -21.10,
    # HIGHLANDS
    -19.20, -18.90
  ),
  lat = c(
    # NORTH
    65.97, 65.74, 65.61, 65.88,
    65.85, 65.57, 65.93,
    65.55,
    # SOUTH
    63.47, 63.90, 63.70,
    63.70, 63.84, 63.90,
    63.85,
    # EAST
    64.80, 64.87, 64.62, 65.26,
    # WEST
    65.50, 64.90, 64.20,
    # HIGHLANDS
    64.85, 64.90
  ),
  period = c(
    # NORTH
    "Settlement (870–1000 CE)", "Settlement (870–1000 CE)",
    "Settlement (870–1000 CE)", "Settlement (870–1000 CE)",
    "Settlement (870–1000 CE)", "Settlement (870–1000 CE)",
    "Settlement (870–1000 CE)",
    "Settlement (870–1000 CE)",
    # SOUTH
    "Settlement (870–1000 CE)", "Settlement (870–1000 CE)",
    "Settlement (870–1000 CE)",
    "Settlement (870–1000 CE)", "Post-medieval (1600–1900 CE)",
    "Settlement (870–1000 CE)",
    "Settlement (870–1000 CE)",
    # EAST
    "Post-medieval (1600–1900 CE)", "Post-medieval (1600–1900 CE)",
    "Settlement (870–1000 CE)", "Settlement (870–1000 CE)",
    # WEST
    "Settlement (870–1000 CE)", "Settlement (870–1000 CE)",
    "Undated",
    # HIGHLANDS
    "Laki era (~1780 CE)", "Laki era (~1780 CE)"
  ),
  # Set to TRUE for sites you want labelled on the map
  label = c(
    TRUE, FALSE, TRUE, FALSE,
    FALSE, TRUE, TRUE,
    FALSE,
    FALSE, FALSE, FALSE,
    FALSE, FALSE, FALSE,
    FALSE,
    TRUE, FALSE, TRUE, FALSE,
    TRUE, FALSE, FALSE,
    TRUE, FALSE
  ),
  stringsAsFactors = FALSE
)

# Convert to sf object
sites_sf <- st_as_sf(sites, coords = c("lon", "lat"), crs = 4326)

# ── BASE MAP ──────────────────────────────────────────────────────────────────
iceland <- ne_countries(country = "Iceland", scale = "large", returnclass = "sf")

# ── COLOUR PALETTE ────────────────────────────────────────────────────────────
period_colours <- c(
  "Settlement (870–1000 CE)"    = "#E07B39",   # amber/orange
  "Medieval (1000–1600 CE)"     = "#4DAF4A",   # green
  "Post-medieval (1600–1900 CE)"= "#377EB8",   # blue
  "Laki era (~1780 CE)"         = "#E41A1C",   # red — highlighted
  "Undated"                      = "#999999"    # grey
)

period_shapes <- c(
  "Settlement (870–1000 CE)"    = 21,
  "Medieval (1000–1600 CE)"     = 21,
  "Post-medieval (1600–1900 CE)"= 21,
  "Laki era (~1780 CE)"         = 23,   # diamond for Laki sites
  "Undated"                      = 21
)

# ── PLOT ──────────────────────────────────────────────────────────────────────
p <- ggplot() +
  geom_sf(data = iceland, fill = "#f0ede8", colour = "#a0a0a0", linewidth = 0.4) +
  geom_sf(
    data  = sites_sf,
    aes(fill = period, shape = period),
    colour = "white", size = 3.5, stroke = 0.4
  ) +
  geom_label_repel(
    data   = sites[sites$label, ],
    aes(x = lon, y = lat, label = site),
    size   = 2.8, label.size = 0.2,
    box.padding = 0.4, point.padding = 0.3,
    max.overlaps = 20,
    family = "serif"
  ) +
  scale_fill_manual(values = period_colours, name = "Time period") +
  scale_shape_manual(values = period_shapes, name = "Time period") +
  guides(fill = guide_legend(override.aes = list(size = 4))) +
  coord_sf(xlim = c(-25, -12), ylim = c(63.2, 66.8)) +
  labs(
    title    = "Archaeological horse sampling sites — Iceland",
    subtitle = "Up to 90 specimens from >35 sites spanning 870–1900 CE",
    caption  = "Coordinates approximate. Verify against National Museum database."
  ) +
  theme_minimal(base_family = "serif") +
  theme(
    plot.title    = element_text(size = 13, face = "bold"),
    plot.subtitle = element_text(size = 9, colour = "grey40"),
    plot.caption  = element_text(size = 7, colour = "grey60", face = "italic"),
    legend.position   = "bottom",
    legend.title      = element_text(size = 9, face = "bold"),
    legend.text       = element_text(size = 8),
    panel.grid.major  = element_line(colour = "#d0d0d0", linewidth = 0.2),
    axis.text         = element_text(size = 7)
  )

print(p)

# ── SAVE ─────────────────────────────────────────────────────────────────────
# Adjust width/height as needed. 300 dpi is publication quality.
ggsave("figure1_iceland_map.pdf", plot = p, width = 18, height = 14, units = "cm", dpi = 300)
ggsave("figure1_iceland_map.png", plot = p, width = 18, height = 14, units = "cm", dpi = 300)
message("Saved figure1_iceland_map.pdf and .png")
