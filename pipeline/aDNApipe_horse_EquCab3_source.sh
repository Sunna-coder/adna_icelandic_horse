#!/bin/bash

## Horse-specific file source for aDNA pipeline
## Reference genome: EquCab3
##
## Fill in paths below using the same values used for the Ahmed et al. mapping at deCODE.
## The structure mirrors aDNApipe_decode_humanB38_source.sh — only the reference
## genome, chromosome names, and SNP/capture paths change.
##
## Pass this file to aDNAfastqMAPpe.sh with the -y flag:
##   aDNAfastqMAPpe.sh ... -y /path/to/aDNApipe_horse_EquCab3_source.sh

## -------------------------------------------------------
## REFERENCE GENOME
## -------------------------------------------------------

## Path to EquCab3 FASTA (already indexed with BWA and samtools at deCODE)
refFa=[PATH_TO_EQUCAB3_FA]          # e.g. /odinn/data/reference/horse/EquCab3/EquCab3.fa

## -------------------------------------------------------
## CHROMOSOME NAMES (EquCab3 naming)
## -------------------------------------------------------

## Sex chromosomes
chromX="chrX"
chromY="chrY"

## Thresholds for sex estimation from X:Y read ratios
## These may need adjustment relative to human defaults
malelimit=0.1       # ry ratio below this → male
femalelimit=0.8     # ry ratio above this → female

## Chromosome length file (for genome coverage summary)
chromLenpath=[PATH_TO_EQUCAB3_CHROMLEN]   # e.g. EquCab3.chrom.sizes or similar

## -------------------------------------------------------
## SNP CAPTURE COVERAGE
## -------------------------------------------------------

## The human 1240K SNP panel does not apply to horses.
## Replace with a horse SNP panel if available, or leave blank to skip capture coverage step.
## For whole-genome shotgun data (no capture), this step can be omitted.
SNPset1240k=""      # leave empty — not applicable for horse WGS

## -------------------------------------------------------
## mtDNA REFERENCE
## -------------------------------------------------------

## Horse mitochondrial reference sequence
## GenBank accession X79547.1 (horse mtDNA) or the mtDNA contig in EquCab3
## [PATH_TO_HORSE_MTDNA_REF]

## -------------------------------------------------------
## CONTAMINATION ESTIMATION
## -------------------------------------------------------

## The human ANGSD X-contamination step is not directly applicable to horses.
## Options:
##   1. Skip contamination estimation (simplest; acceptable for initial processing)
##   2. Use mtDNA-based contamination check (more appropriate for non-human aDNA)
##   3. Apply a horse-specific contamination approach if available
##
## Set cXbedSTR, cXuniqpath, cXHapMappath to empty to disable the ANGSD X-contam step.
cXbedSTR=""
cXuniqpath=""
cXHapMappath=""

## -------------------------------------------------------
## NOTES
## -------------------------------------------------------
## All other pipeline parameters (adapter trimming, BWA mapping, Picard deduplication,
## mapDamage rescaling, sex estimation) are species-agnostic and run unchanged.
## The softSourceFile (software paths) does not need to change for horse data.
