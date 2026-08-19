*Scratch draft — not part of the MSCA application, working space for the Iseult follow-up email (post Agnar/Kristján meeting).*

---

Hi Iseult (and Joscha),

Following up after discussing this further with Agnar and Kristján. There's a fair bit to cover, so I've split it by topic.

**1. Comparative sample lists**

It was really useful having the list of specific individuals Joscha is interested in from Antonio et al./Rodríguez-Varela/Stolarek. If you're mainly interested in a subset of the other comparative data too, a similar list for those would help us prioritise and make sure we give you exactly what's useful, rather than everything.

**2. Summary statistics (≥3cM)**

We can send you IBD summary statistics for fragments of 3cM and above. I'll send these once the new Traena results and the comparative dataset processing are finished.

**3. How our current pipeline works**

Our in-house IBD method (we call it bedIBD internally) runs as part of a broader population genetics pipeline that's executed once per ancient sample. That pipeline has a built-in minimum segment length of 3cM — that's what comes out of a standard run. Re-running with a different threshold means re-running the pipeline, which has a real cost in compute time, so it's not something we want to do repeatedly without good reason.

bedIBD currently runs against our Scandinavian reference set, which is chip-typed (OmniExpress) — that's what we've used and validated so far, not the imputed version of that same reference set.

**4. Why going below 3cM is a real concern, not just a preference**

Agnar is cautious about lowering the threshold, for two reasons:

- **Accuracy**: bedIBD works on unphased data, and below 3cM the number of fragments identified becomes excessive — without phase information, short segments are much harder to distinguish from noise, so the results get less reliable exactly where you'd be lowering the threshold to gain resolution.
- **File size**: with a reference set this size (thousands of modern individuals), the number of short fragments below 3cM would be very large, producing enormous output files. This is a practical, not just statistical, concern.

One thing worth noting: the need to go this low partly depends on reference set size. With a large reference set like ours, we don't necessarily need to push the threshold as low to get statistical power — smaller reference panels are more often where a lower threshold is actually needed. Happy to discuss this trade-off on a call.

**5. The ancIBD alternative**

ancIBD can't be slotted into our existing per-sample pipeline the way bedIBD is — because of how ancIBD is set up, it has to be run as a single dedicated analysis across all samples together, not incrementally per individual. The upside is that, since ancIBD uses phased data, we could likely go lower than 3cM (down to around 2cM) without the same unphased-data noise problem.

The trade-offs: (i) it would need to be run as its own separate analysis, not just an extension of what already exists; (ii) it would need the **imputed** version of the modern reference set rather than the chip-typed (OmniExpress) data we've used and validated so far — using the imputed set is something we've discussed and would be interesting to test, but it's genuinely untested on our end, so there's real uncertainty there; (iii) because a full ancIBD run is computationally heavy and takes a while on the cluster, we want to avoid running it more than once — which means being very sure in advance exactly which individuals and which SNP set to include, rather than iterating.

**Next steps**

Given all of this, it would help to have a Zoom call with Harald, Kristján and Agnar to talk through the threshold trade-offs and figure out the best path forward before committing cluster time to a specific ancIBD run. Let me know what times might work on your end.

All the best,
Sunna
