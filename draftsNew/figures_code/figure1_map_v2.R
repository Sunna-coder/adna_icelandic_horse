## Figure 1 — Map of Iceland: archaeological horse sampling sites
## v2: coordinates from horse_sites_wgs84.csv (all converted to WGS84)
##
## Circle colour = time period; circle border = gold if site also has human genomes
## All requested sites shown (68 total: 54 new + 14 already permitted)
##
## Install packages once:
## install.packages(c("ggplot2", "sf", "rnaturalearth", "rnaturalearthdata",
##                    "dplyr", "readr", "scales", "ggrepel"))

library(ggplot2)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(dplyr)
library(readr)
library(scales)
library(ggrepel)

# ── LOAD DATA ─────────────────────────────────────────────────────────────────
# Set path to the folder containing horse_sites_wgs84.csv
# Use forward slashes on Windows (or double backslashes)
script_dir <- "C:/Users/sigridse/Documents/horse_figures"
# To use the script location automatically in RStudio, replace the line above with:
# script_dir <- dirname(rstudioapi::getSourceEditorContext()$path)

sites <- read_csv(file.path(script_dir, "horse_sites_wgs84.csv"),
                  show_col_types = FALSE)

# Drop any rows with missing coordinates
sites <- sites |>
  filter(!is.na(Lat_WGS84), !is.na(Lon_WGS84))

# Clean up N_specimens: strip "+" suffix, convert to numeric, treat NA/0 as 1
sites <- sites |>
  mutate(N_specimens = as.numeric(gsub("\\+.*$", "", N_specimens)),
         N_specimens = ifelse(is.na(N_specimens) | N_specimens == 0, 1, N_specimens))

# ── PERIOD CLASSIFICATION ─────────────────────────────────────────────────────
# Settlement: 870–1000 CE; Post-Settlement: 1001–1900 CE
sites <- sites |>
  mutate(Map_period = case_when(
    Period_category == "settlement" ~ "Settlement (870–1000 CE)",
    Period_category == "post-settlement" ~ "Post-Settlement (1001–1900 CE)",
    Map_period %in% c("Laki era (~1780 CE)",
                      "Post-medieval (1100–1900 CE)",
                      "Post-Settlement (1100–1900 CE)") ~ "Post-Settlement (1001–1900 CE)",
    Map_period %in% c("Settlement (870–1100 CE)",
                      "Settlement (870–1000 CE)") ~ "Settlement (870–1000 CE)",
    TRUE ~ "Undated"
  ))

period_levels <- c(
  "Settlement (870–1000 CE)",
  "Post-Settlement (1001–1900 CE)",
  "Undated"
)

sites <- sites |>
  mutate(Map_period = factor(Map_period, levels = period_levels))

period_colours <- c(
  "Settlement (870–1000 CE)"        = "#FFD966",   # yellow
  "Post-Settlement (1001–1900 CE)"  = "#377EB8",   # blue
  "Undated"                          = "#999999"    # grey
)

# ── HUMAN GENOME SITES ────────────────────────────────────────────────────────
# Settlement sites that also have sequenced human genomes get a red border
if (!"Human_seq" %in% names(sites)) sites$Human_seq <- ""
sites <- sites |>
  mutate(red_border = !is.na(Human_seq) & Human_seq == "yes")

# ── FLAG: mark sites with suspect coordinates ─────────────────────────────────
if (!"Coord_flag" %in% names(sites)) sites$Coord_flag <- ""
sites$coord_ok <- is.na(sites$Coord_flag) | sites$Coord_flag == ""

# ── LABELS: sites that overlap on the map ─────────────────────────────────────
label_sites <- c("Alþingisreitur", "Tjarnargata (3C)")
sites_label <- sites[sites$coord_ok & sites$Site %in% label_sites, ]

# ── BASE MAP ──────────────────────────────────────────────────────────────────
iceland <- ne_countries(country = "Iceland", scale = "large", returnclass = "sf")

# ── PLOT ──────────────────────────────────────────────────────────────────────
p <- ggplot() +
  # Iceland base
  geom_sf(data      = iceland,
          fill      = "#f0ede8",
          colour    = "#a0a0a0",
          linewidth = 0.4) +

  # All valid sites — fill by period, size by N specimens, white border
  geom_point(
    data   = sites[sites$coord_ok & !sites$red_border, ],
    aes(x  = Lon_WGS84, y = Lat_WGS84, fill = Map_period, size = N_specimens),
    shape  = 21,
    colour = "white",
    stroke = 0.5,
    alpha  = 0.9
  ) +

  # Settlement sites with human genomes — red border
  geom_point(
    data        = sites[sites$coord_ok & sites$red_border, ],
    aes(x       = Lon_WGS84, y = Lat_WGS84, fill = Map_period, size = N_specimens),
    shape       = 21,
    colour      = "#CC0000",
    stroke      = 1.4,
    alpha       = 0.9,
    show.legend = c(size = FALSE)
  ) +

  # Flagged sites — open triangles for review
  geom_point(
    data   = sites[!sites$coord_ok, ],
    aes(x  = Lon_WGS84, y = Lat_WGS84),
    shape  = 24,
    size   = 3,
    colour = "#CC0000",
    fill   = "#FF9999",
    stroke = 1.0
  ) +

  # Labels for overlapping sites
  geom_label_repel(
    data          = sites_label,
    aes(x = Lon_WGS84, y = Lat_WGS84, label = Site),
    size          = 2.5,
    label.size    = 0.2,
    box.padding   = 0.5,
    point.padding = 0.3,
    max.overlaps  = 20,
    family        = "serif",
    colour        = "grey20",
    fill          = "white",
    alpha         = 0.85
  ) +

  # Scales
  scale_fill_manual(
    values = period_colours,
    name   = "Time period",
    drop   = FALSE
  ) +
  scale_size_area(
    name     = "N specimens",
    max_size = 14,
    breaks   = c(1, 5, 10, 30),
    labels   = c("1", "5", "10", "30+")
  ) +

  # Guides
  guides(
    fill = guide_legend(
      override.aes = list(size = 4, colour = "white", stroke = 0.5),
      order = 1
    ),
    size = guide_legend(
      override.aes = list(shape = 21, fill = "grey60", colour = "black", stroke = 0.5),
      order = 2
    )
  ) +

  # Iceland bounding box
  coord_sf(xlim = c(-25.5, -12.5), ylim = c(63.0, 67.0), expand = FALSE) +

  labs(
    title    = "Archaeological horse sampling sites — Iceland",
    subtitle = paste0("68 sites (54 new request + 14 already permitted) spanning 870–1900 CE\n",
                      "Red border = site with sequenced human genomes (18 sites); circle size = N specimens"),
    caption  = paste0("Coordinates: WGS84 (EPSG:4326), converted from ISN93, decimal degrees, and DMS.\n",
                      "Red triangles = coordinates flagged as suspect — check horse_sites_wgs84.xlsx.")
  ) +

  theme_minimal(base_family = "serif") +
  theme(
    plot.title       = element_text(size = 13, face = "bold"),
    plot.subtitle    = element_text(size = 8.5, colour = "grey35"),
    plot.caption     = element_text(size = 6.5, colour = "grey55", face = "italic"),
    legend.position  = "right",
    legend.title     = element_text(size = 9, face = "bold"),
    legend.text      = element_text(size = 8),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text        = element_text(size = 7),
    axis.title       = element_blank(),
    plot.margin      = margin(5, 5, 5, 5)
  )

print(p)

# ── SAVE ──────────────────────────────────────────────────────────────────────
out_dir <- script_dir

ggsave(file.path(out_dir, "figure1_iceland_map_v2.pdf"),
       plot = p, width = 20, height = 14, units = "cm", dpi = 300)
ggsave(file.path(out_dir, "figure1_iceland_map_v2.png"),
       plot = p, width = 20, height = 14, units = "cm", dpi = 300)

message("Saved figure1_iceland_map_v2.pdf and .png")
