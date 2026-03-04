# Setting up R on a new Windows computer
# For generating the application figures

---

## Step 1 — Install R (the language itself)

1. Go to: **https://cran.r-project.org/**
2. Click **"Download R for Windows"**
3. Click **"base"**
4. Click **"Download R-4.x.x for Windows"** (the big blue link at the top — take whatever the current version is)
5. Run the downloaded `.exe` installer
6. Click through the installer with all the default settings — you do not need to change anything

---

## Step 2 — Install RStudio (the program you actually use to write and run R)

R on its own has a very basic interface. RStudio is the free, professional editor that everyone uses. You need both.

1. Go to: **https://posit.co/download/rstudio-desktop/**
2. Click **"Download RStudio Desktop"** (the free version — "Posit Cloud" or paid versions are not needed)
3. Run the downloaded installer with all defaults

> After this you will have two programs installed: R and RStudio. You only ever open **RStudio** — it uses R automatically in the background.

---

## Step 3 — Open RStudio

Open RStudio from the Start menu. You will see four panels:
- **Top-left**: where you write and edit scripts
- **Bottom-left**: the Console — where code actually runs
- **Top-right**: your Environment (variables you have created)
- **Bottom-right**: Files, Plots, Help

---

## Step 4 — Install the packages needed for the figures

Packages are add-ons that give R extra capabilities. You only need to install each package **once** on a computer.

Click inside the **Console** (bottom-left panel), paste the following, and press **Enter**:

```r
install.packages(c(
  "ggplot2",          # all plotting
  "ggrepel",          # non-overlapping text labels on the map and timeline
  "patchwork",        # combining multiple plots into one figure
  "sf",               # handling geographic data (needed for the R map version)
  "rnaturalearth",    # provides country outline shapefiles
  "rnaturalearthdata" # data files used by rnaturalearth
))
```

This will take 1–3 minutes. You will see a lot of text scrolling — that is normal. When it is done the `>` prompt reappears.

If R asks you **"Do you want to install from sources the packages which need compilation?"** — type `n` and press Enter (the pre-compiled version is fine).

If R asks you to **select a CRAN mirror** — pick any one near you (e.g. 0-Cloud or a European mirror).

---

## Step 5 — Locate your project files

Your project files are on the Linux side of your computer (WSL). Windows can see them at this path:

```
\\wsl$\Ubuntu\home\sigridse\projects\adna_icelandic_horse\draftsNew\figures_code\
```

The easiest way to work with them:

**Option A — Copy files to Windows first (simplest)**
1. Open File Explorer
2. Paste `\\wsl$\Ubuntu\home\sigridse\projects\adna_icelandic_horse\draftsNew\figures_code\` into the address bar
3. Copy the three `.R` files and the `.csv` file to somewhere on Windows, e.g. `C:\Users\YourName\Documents\horse_figures\`

**Option B — Point RStudio at the WSL path directly**
This sometimes works, but can cause issues. Option A is more reliable.

---

## Step 6 — Set your working directory in RStudio

The working directory is the folder where R will look for your scripts and where it will save the output figures.

In RStudio: **Session → Set Working Directory → Choose Directory…**

Navigate to the folder where you put the `.R` files (e.g. `C:\Users\YourName\Documents\horse_figures\`).

Or paste this into the Console (adjusting the path):

```r
setwd("C:/Users/YourName/Documents/horse_figures")
```

> Note: use forward slashes `/` in R paths on Windows, not backslashes.

---

## Step 7 — Run the figure scripts

### Figure 2 — Timeline

In RStudio, go to **File → Open File…** and open `figure2_timeline.R`.

The script opens in the top-left panel. Click the **"Source"** button (top-right of the script panel) to run the whole script at once.

The plot will appear in the **Plots** panel (bottom-right). Two files will be saved in your working directory:
- `figure2_timeline.pdf` ← use this for the application (best quality)
- `figure2_timeline.png` ← use this if you need to embed it in Word/PowerPoint

### Figure 3 — Three-aims schematic

Open `figure3_aims_schematic.R` and click **Source**. Same as above.

### Figure 1 (R version) — Iceland map

Open `figure1_map.R` and click **Source**.

> The first time you run the map script, `rnaturalearth` downloads a small Iceland shapefile from the internet. This requires an internet connection. After the first run it is cached and works offline.

---

## Step 8 — Adjusting the figures before saving

If you want to change anything (colours, which sites are labelled, text size), open the `.R` file, make the change, and click **Source** again.

The most useful things to adjust:

**In figure1_map.R**
- To change which sites have labels on the map, find the `label` column in the `sites` data frame and change `TRUE` to `FALSE` (or vice versa)
- To change point size: find `size = 3.5` in the `geom_sf(...)` call and adjust the number
- The final `ggsave(...)` lines control the output size — `width` and `height` are in centimetres

**In figure2_timeline.R**
- To add or remove a historical event line, edit the `events` data frame at the top
- To correct a site's date range, edit `date_min` and `date_max` in the `specimens` data frame

**In figure3_aims_schematic.R**
- To change the text inside a box, find the relevant `aims_panel(...)` call and edit the `bullets` vector
- To change colours, edit `box_fill`, `title_fill`, and `accent` in each panel call

---

## Troubleshooting

**"there is no package called 'X'"**
→ Run `install.packages("X")` in the Console, then try again.

**The map script gives an error about `rnaturalearth`**
→ Try: `install.packages("rnaturalearth", dependencies = TRUE)` and also `install.packages("rnaturalearthdata")`

**The plot appears but looks wrong or text overlaps**
→ Try resizing the Plots panel (drag the panel border) and then click the **Zoom** button to see it at full size. The saved PDF will always look better than the preview.

**"object not found" or "could not find function"**
→ Make sure all `install.packages(...)` from Step 4 completed without errors. Re-run the install line.

**Files are not saved / "cannot open connection"**
→ Check that your working directory is set correctly (Step 6) and that the folder exists on Windows.

---

## Summary — order of operations on a new computer

1. Install R from cran.r-project.org
2. Install RStudio from posit.co
3. Open RStudio
4. Paste the `install.packages(...)` block into the Console → Enter
5. Set working directory to the folder with the `.R` files
6. Open a script → click Source → check the Plots panel
7. Find the saved `.pdf` and `.png` in your working directory
