*Scratch draft 2 — not part of the MSCA application, working space for the Iseult follow-up email (post Agnar/Kristján meeting). This version adds detailed bedIBD methodology and folds in the ancient-side depth/phasing context from the earlier (never-sent) background email.*

---

Hi Iseult (and Joscha),

Following up after discussing this further with Agnar and Kristján. There's a fair bit to cover, so I've split it by topic.

**1. How our current pipeline works**

We have several different reference sets at deCODE, built from different combinations of chip-typed data with different SNP content. To make this concrete, here's how our in-house IBD pipeline actually works.

We call the method bedIBD internally. It's based on an algorithm similar to IBIS, and works directly on unphased, hard-called genotypes rather than requiring phased data (full methodological detail is in the preprint linked below). We apply a minimum segment length threshold that we adapt to the marker density of whichever reference panel is being used; for the pipeline we're using here, that threshold is 3cM.

This runs as part of a broader population genetics pipeline that's executed once per ancient sample against a given reference panel. Re-running with a different threshold means re-running part of the pipeline (not the whole thing), which still has a real cost in compute time, so it's not something we want to do repeatedly without good reason.

One more piece of background worth having up front: all of our ancient individuals are imputed with GLIMPSE2 as a standard background step before any IBD calling happens, and only samples reaching a minimum depth (≥0.08x for WGS, ≥0.5x for 1240k capture) are imputed at all. This matters for everything downstream, including the ancIBD discussion below, since it's also where phasing comes from (more on that in Section 4).

bedIBD currently runs against our Scandinavian reference set and other reference sets; all of these are chip-typed, though not all on the same chip platform (OmniExpress is one of a few we use, not the only one). That's what we've used and validated so far, not the imputed version of these reference sets. For Scandinavia specifically, our standard pipeline set includes 17,526 present-day individuals genotyped on OmniExpress, and the bed files we run for IBD contain 600,000 SNPs (a normal marker count for this kind of chip array). We also have imputed genotypes for a subset (not all) of these individuals, alongside the chip genotypes; we just haven't used that imputed version in a validated pipeline run yet.

To give you a sense of the other reference sets we have available: we also have a broader European reference set (around 168,000 SNPs, 10,083 individuals), which we use for other analyses such as PCA. The individual count there is too low to give meaningful IBD results, so it's more of a context/background set than something we'd use for the kind of comparison you're asking about.

The method itself, though applied with a different threshold chosen for that specific published analysis, is described in our recent preprint: https://www.biorxiv.org/content/10.64898/2026.06.29.730585v1.

**2. Sample lists and summary statistics**

I'll send you the IBD summary statistics (fragments ≥3cM) against the Scandinavian reference set now, since that's already available.

For the rest: it was really useful having the list of specific individuals Joscha is interested in from Antonio et al./Rodríguez-Varela/Stolarek. If you're mainly interested in a subset of the other comparative data too, a similar list would help us prioritise, so we're not sending you data you don't actually need given how many individuals are in the sets you originally mentioned. Once we have that, we can send summary statistics covering the rest of the Traena individuals and the comparative individuals you're interested in, once they've gone through the pipeline.

**3. Why going below 3cM is a real concern, not just a preference**

Agnar is cautious about lowering the threshold, for two reasons:

- **Accuracy**: bedIBD works on unphased data. Below 3cM, the number of fragments identified becomes excessive; without phase information, short segments are much harder to distinguish from noise, so results get less reliable exactly where you'd be lowering the threshold to gain resolution.
- **File size**: with a reference set this size (thousands of modern individuals), the number of short fragments below 3cM would be very large, producing enormous output files. This is a practical, not just statistical, concern.

One thing worth noting: the need to go this low partly depends on reference set size. With a large reference set like ours, we don't necessarily need to push the threshold as low to get statistical power; smaller reference panels are more often where a lower threshold is actually needed. Happy to discuss this trade-off on a call.

**4. The ancIBD alternative**

ancIBD can't be slotted into our existing per-sample pipeline the way bedIBD is. Because of how ancIBD is set up, it has to be run as a single dedicated analysis across all samples together, not incrementally per individual. The upside is that, since ancIBD uses phased data, we could likely go lower than 3cM (down to around 2cM) without the same unphased-data noise problem.

The trade-offs: (i) it would need to be run as its own separate analysis, not just an extension of what already exists; (ii) it would need the imputed version of the modern reference set rather than the chip-typed data we've used and validated so far (OmniExpress, for the Scandinavian set specifically). Using the imputed set is something we've discussed and would be interesting to test, but it's genuinely untested on our end, so there's real uncertainty there. (iii) Because a full ancIBD run is computationally heavy and takes a while on the cluster, we want to avoid running it more than once, which means being very sure in advance exactly which individuals and which SNP set to include, rather than iterating.

On the ancient side, this shouldn't be a blocker: as mentioned above, our ancient individuals are already phased as part of the GLIMPSE2 imputation step, so ancIBD's phasing requirement is already satisfied. We have noticed that IBD results tend to be messier for samples at the lower end of the depth range we impute at, which is consistent with ancIBD's own documented depth recommendations (>0.25x for WGS, >1x for 1240k capture); phasing quality likely varies with depth too, which may be part of why. Worth bearing in mind for short (2-8cM) segment calling specifically, since phasing errors tend to create false short segments.

**Next steps**

Given all of this, it would help to have a Zoom call with you all to talk through the threshold trade-offs and figure out the best path forward before committing cluster time to a specific ancIBD run. Let me know what times might work on your end.

All the best,
Sunna
