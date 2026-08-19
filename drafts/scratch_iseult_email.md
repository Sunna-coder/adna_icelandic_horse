*Scratch draft — not part of the MSCA application, working space for the Iseult follow-up email (post Agnar/Kristján meeting).*

---

Hi Iseult (and Joscha),

Following up after discussing this further with Agnar and Kristján. There's a fair bit to cover, so I've split it by topic.

**1. How our current pipeline works**

As mentioned in my last email, we have several different reference sets at deCODE, built from different combinations of chip-typed data with different SNP content. To make this more concrete: our in-house IBD method (we call it bedIBD internally) runs as part of a broader population genetics pipeline that's executed once per ancient sample. That pipeline has a built-in minimum segment length of 3cM; that's what comes out of a standard run. Re-running with a different threshold means re-running the pipeline, which has a real cost in compute time, so it's not something we want to do repeatedly without good reason.

bedIBD currently runs against our Scandinavian reference set and other reference sets, which are chip-typed (OmniExpress); that's what we've used and validated so far, not the imputed version of those same reference sets. This is described in our recent preprint: https://www.biorxiv.org/content/10.64898/2026.06.29.730585v1. The Scandinavian OmniExpress reference set there comprises 29,525 present-day individuals; the paper doesn't state a single total SNP count for that panel (it gives marker-density QC criteria instead), so I don't have an exact figure to give you on that front, but can look into it further if useful.

**2. Sample lists and summary statistics**

It was really useful having the list of specific individuals Joscha is interested in from Antonio et al./Rodríguez-Varela/Stolarek. If you're mainly interested in a subset of the other comparative data too, a similar list would help us prioritise. Once we have that, we can send you IBD summary statistics (fragments ≥3cM) covering all the Traena individuals and all the comparative individuals you're interested in, once they've gone through the pipeline. This way we're not sending you data you don't actually need, given how many individuals are in the sets you originally mentioned.

**3. Why going below 3cM is a real concern, not just a preference**

Agnar is cautious about lowering the threshold, for two reasons:

- **Accuracy**: bedIBD works on unphased data. Below 3cM, the number of fragments identified becomes excessive; without phase information, short segments are much harder to distinguish from noise, so results get less reliable exactly where you'd be lowering the threshold to gain resolution.
- **File size**: with a reference set this size (thousands of modern individuals), the number of short fragments below 3cM would be very large, producing enormous output files. This is a practical, not just statistical, concern.

One thing worth noting: the need to go this low partly depends on reference set size. With a large reference set like ours, we don't necessarily need to push the threshold as low to get statistical power; smaller reference panels are more often where a lower threshold is actually needed. Happy to discuss this trade-off on a call.

**4. The ancIBD alternative**

ancIBD can't be slotted into our existing per-sample pipeline the way bedIBD is. Because of how ancIBD is set up, it has to be run as a single dedicated analysis across all samples together, not incrementally per individual. The upside is that, since ancIBD uses phased data, we could likely go lower than 3cM (down to around 2cM) without the same unphased-data noise problem.

The trade-offs: (i) it would need to be run as its own separate analysis, not just an extension of what already exists; (ii) it would need the imputed version of the modern reference set rather than the chip-typed (OmniExpress) data we've used and validated so far. Using the imputed set is something we've discussed and would be interesting to test, but it's genuinely untested on our end, so there's real uncertainty there. (iii) Because a full ancIBD run is computationally heavy and takes a while on the cluster, we want to avoid running it more than once, which means being very sure in advance exactly which individuals and which SNP set to include, rather than iterating.

**Next steps**

Given all of this, it would help to have a Zoom call with you all to talk through the threshold trade-offs and figure out the best path forward before committing cluster time to a specific ancIBD run. Let me know what times might work on your end.

All the best,
Sunna
