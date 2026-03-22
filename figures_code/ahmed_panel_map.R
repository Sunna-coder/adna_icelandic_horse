# Map of Ahmed et al. reference panel — samples relevant to Icelandic horse origins
# Modern breeds (circles) and ancient whole-genome specimens (triangles)
# Note: in horse_info_tbl_grp_colors.txt, column "long" = latitude, "lat" = longitude (swapped)

library(ggplot2)
library(rnaturalearth)
library(rnaturalearthdata)
library(sf)
library(dplyr)

# ── Modern breeds ────────────────────────────────────────────────────────────
modern <- data.frame(
  label     = c("Icelandic horse\n(n=4)", "Nordlandshest/\nLyngen (n=2)",
                "Fjord horse\n(n=2)", "Faroese Pony\n(n=2)",
                "Shetland Pony\n(n=8)", "Dartmoor Pony\n(n=6)",
                "Exmoor Pony\n(n=3)", "Eriskay Pony\n(n=3)",
                "Highland Pony\n(n=1)", "Connemara\n(n=1)",
                "Welsh Pony\n(n=7)"),
  lat       = c(64.84,  69.68,  60.52,  62.16,
                60.30,  50.57,  51.15,  57.07,
                57.13,  53.38,  52.11),
  lon       = c(-18.34,  19.47,   5.71,  -7.06,
                 -1.27,  -3.89,  -3.66,  -7.30,
                 -4.84,  -8.92,  -4.00),
  group     = c("Iceland",
                "Scandinavia", "Scandinavia", "North Atlantic",
                "British Isles", "British Isles", "British Isles",
                "British Isles", "British Isles", "British Isles",
                "British Isles"),
  # Per-label nudge: nudge_x shifts horizontally, nudge_y shifts vertically
  nudge_x   = c( 0.5,   0.5,   0.5,   0.5,
                 0.5,   0.5,   0.5,  -0.5,
                 0.5,  -0.5,   0.5),
  nudge_y   = c( 1.2,   0.8,   0.8,  -1.2,
                 0.8,  -1.0,   0.8,   0.8,
                -1.0,   0.8,  -1.0),
  hjust     = c( 0.0,   0.0,   0.0,   0.0,
                 0.0,   0.0,   0.0,   1.0,
                 0.0,   1.0,   0.0)
)

# ── Ancient specimens ─────────────────────────────────────────────────────────
ancient <- data.frame(
  label   = c("Orkney, Scotland\n600 CE (n=3)",
              "York/Jorvik\n956 CE (n=1)",
              "Denmark\n862 CE (n=1)",
              "Sweden\n495 CE (n=1)",
              "Estonia\n832–858 CE (n=2)"),
  lat     = c(58.96,  53.96,  55.68,  56.30,  58.32),
  lon     = c(-2.70,  -1.08,  12.57,  16.49,  26.59),
  period  = c("Viking Age",
              "Viking Age",
              "Viking Age",
              "Pre-Viking Age",
              "Viking Age"),
  # Denmark: nudge left+down into Danish territory; Estonia: above-left inside map
  nudge_x = c( 0.5,   0.5,  -0.5,   0.5,  -0.5),
  nudge_y = c( 1.0,  -1.0,  -1.5,   1.0,   1.5),
  hjust   = c( 0.0,   0.0,   1.0,   0.0,   1.0)
)

# ── Base map ──────────────────────────────────────────────────────────────────
world <- ne_countries(scale = "medium", returnclass = "sf")

# Colour palettes
breed_colours <- c(
  "Iceland"       = "#E63946",   # red — the target population
  "Scandinavia"   = "#457B9D",   # blue
  "North Atlantic"= "#2A9D8F",   # teal
  "British Isles" = "#E9C46A"    # amber
)

period_colours <- c(
  "Viking Age / Pictish" = "#6A0572",
  "Viking Age"           = "#6A0572",
  "Pre-Viking Age"       = "#C084E0"
)

# ── Plot ──────────────────────────────────────────────────────────────────────
p <- ggplot() +
  # Base map
  geom_sf(data = world, fill = "grey92", colour = "grey70", linewidth = 0.3) +


  # Ancient specimens — filled triangles
  geom_point(data = ancient,
             aes(x = lon, y = lat, colour = period),
             shape = 17, size = 3.5) +

  # Modern breeds — circles
  geom_point(data = modern,
             aes(x = lon, y = lat, fill = group),
             shape = 21, size = 4, colour = "white", stroke = 0.6) +

  # Labels for modern breeds (per-label positioning)
  geom_text(data = modern,
            aes(x = lon + nudge_x, y = lat + nudge_y, label = label, hjust = hjust),
            size = 2.2, vjust = 0.5,
            lineheight = 0.85, colour = "grey20") +

  # Labels for ancient specimens (per-label positioning)
  geom_text(data = ancient,
            aes(x = lon + nudge_x, y = lat + nudge_y, label = label, hjust = hjust),
            size = 2.2, vjust = 0.5,
            lineheight = 0.85, colour = "grey20") +

  # Map extent: North Atlantic + NW Europe
  coord_sf(xlim = c(-30, 32), ylim = c(46, 73), expand = FALSE) +

  # Scales
  scale_fill_manual(name = "Modern breed", values = breed_colours) +
  scale_colour_manual(name = "Ancient specimen", values = period_colours) +

  # Theme
  theme_minimal(base_size = 10) +
  theme(
    legend.position    = "right",
    legend.text        = element_text(size = 8),
    legend.title       = element_text(size = 9, face = "bold"),
    panel.grid.major   = element_line(colour = "grey85", linewidth = 0.3),
    panel.background   = element_rect(fill = "aliceblue", colour = NA),
    plot.title         = element_text(size = 10, face = "bold"),
    plot.subtitle      = element_text(size = 8, colour = "grey40")
  ) +

  labs(
    title    = "Ahmed et al. reference panel — samples relevant to Icelandic horse origins",
    subtitle = "Circles = modern WGS breeds; triangles = ancient WGS specimens (Ahmed et al. panel).",
    x = NULL, y = NULL
  )

# ── Save ───────────────────────────────────────────────────────────────────────
ggsave("ahmed_panel_map.pdf", plot = p, width = 18, height = 12, units = "cm")
ggsave("ahmed_panel_map.png", plot = p, width = 18, height = 12, units = "cm", dpi = 300)

print(p)
