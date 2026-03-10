## Figure 1 — Map of Iceland: archaeological horse sampling sites
## v2: coordinates from horse_sites_wgs84.csv (all converted to WGS84)
##
## Circle size = N specimens (sites with >1 specimen shown larger)
## Circle colour = time period
## All requested sites shown; already-permitted sites distinguished by shape
##
## Install packages once:
## install.packages(c("ggplot2", "sf", "rnaturalearth", "rnaturalearthdata",
##                    "dplyr", "readr", "scales"))

library(ggplot2)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(dplyr)
library(readr)
library(scales)

# ── LOAD DATA ─────────────────────────────────────────────────────────────────
# CSV lives alongside this script
script_dir <- dirname(rstudioapi::getSourceEditorContext()$path)
# If not in RStudio, set manually:
# script_dir <- "/path/to/draftsNew/figures_code"

sites <- read_csv(file.path(script_dir, "horse_sites_wgs84.csv"),
                  show_col_types = FALSE)

# Drop any rows with missing coordinates
sites <- sites |>
  filter(!is.na(Lat_WGS84), !is.na(Lon_WGS84))

# Clean up N_specimens: strip "+" suffix, convert to numeric, treat NA/0 as 1
sites <- sites |>
  mutate(N_specimens = as.numeric(gsub("\\+.*$", "", N_specimens)),
         N_specimens = ifelse(is.na(N_specimens) | N_specimens == 0, 1, N_specimens))

# ── PERIOD COLOURS ────────────────────────────────────────────────────────────
# Reclassify Laki era into Post-Settlement
sites <- sites |>
  mutate(Map_period = case_when(
    Map_period == "Laki era (~1780 CE)" ~ "Post-Settlement (1100–1900 CE)",
    Map_period == "Post-medieval (1100–1900 CE)" ~ "Post-Settlement (1100–1900 CE)",
    Map_period == "Settlement (870–1100 CE)" ~ "Settlement (870–1100 CE)",
    TRUE ~ "Undated"
  ))

period_levels <- c(
  "Settlement (870–1100 CE)",
  "Post-Settlement (1100–1900 CE)",
  "Undated"
)

sites <- sites |>
  mutate(Map_period = factor(Map_period, levels = period_levels))

period_colours <- c(
  "Settlement (870–1100 CE)"       = "#E07B39",   # amber
  "Post-Settlement (1100–1900 CE)" = "#377EB8",   # blue
  "Undated"                         = "#999999"    # grey
)

# Shape: already-permitted (IceEq) vs new request
sites <- sites |>
  mutate(shape_cat = case_when(
    grepl("Already", Sampling_status) ~ "Already permitted",
    TRUE                              ~ "New request"
  ))

shape_vals <- c("Already permitted" = 21, "New request" = 21)

# ── FLAG: mark sites with suspect coordinates ─────────────────────────────────
sites <- sites |>
  mutate(coord_ok = is.na(Coord_flag) | Coord_flag == "")

# ── BASE MAP ──────────────────────────────────────────────────────────────────
iceland <- ne_countries(country = "Iceland", scale = "large", returnclass = "sf")

# ── PLOT ──────────────────────────────────────────────────────────────────────
p <- ggplot() +
  # Iceland base
  geom_sf(data    = iceland,
          fill    = "#f0ede8",
          colour  = "#a0a0a0",
          linewidth = 0.4) +

  # Sites — size proportional to N specimens, colour by period
  geom_point(
    data  = sites |> filter(coord_ok),
    aes(x     = Lon_WGS84,
        y     = Lat_WGS84,
        fill  = Map_period,
        size  = N_specimens),
    shape  = 21,
    colour = "white",
    stroke = 0.5,
    alpha  = 0.9
  ) +

  # Flagged sites — shown as open triangles so they stand out for review
  geom_point(
    data   = sites |> filter(!coord_ok),
    aes(x  = Lon_WGS84, y = Lat_WGS84),
    shape  = 24,        # open triangle
    size   = 3,
    colour = "#CC0000",
    fill   = "#FF9999",
    stroke = 1.0
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

  # Guides — merge fill and size into one legend
  guides(
    fill = guide_legend(override.aes = list(size = 4), order = 1),
    size = guide_legend(order = 2)
  ) +

  # Iceland bounding box with a little margin
  coord_sf(xlim = c(-25.5, -12.5), ylim = c(63.0, 67.0), expand = FALSE) +

  labs(
    title    = "Archaeological horse sampling sites — Iceland",
    subtitle = "Up to 100 new specimens from >35 sites spanning 870–1900 CE\n(circle size proportional to N specimens)",
    caption  = paste0("Coordinates: WGS84 (EPSG:4326), converted from ISN93, decimal degrees, and DMS.\n",
                      "Circle size = N specimens. Red triangles = coordinates flagged as suspect — check horse_sites_wgs84.xlsx.")
  ) +

  theme_minimal(base_family = "serif") +
  theme(
    plot.title      = element_text(size = 13, face = "bold"),
    plot.subtitle   = element_text(size = 8.5, colour = "grey35"),
    plot.caption    = element_text(size = 6.5, colour = "grey55", face = "italic"),
    legend.position = "right",
    legend.title    = element_text(size = 9, face = "bold"),
    legend.text     = element_text(size = 8),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text       = element_text(size = 7),
    axis.title      = element_blank(),
    plot.margin     = margin(5, 5, 5, 5)
  )

print(p)

# ── SAVE ──────────────────────────────────────────────────────────────────────
out_dir <- script_dir   # saves next to the script; change if preferred

ggsave(file.path(out_dir, "figure1_iceland_map_v2.pdf"),
       plot = p, width = 20, height = 14, units = "cm", dpi = 300)
ggsave(file.path(out_dir, "figure1_iceland_map_v2.png"),
       plot = p, width = 20, height = 14, units = "cm", dpi = 300)

message("Saved figure1_iceland_map_v2.pdf and .png")
