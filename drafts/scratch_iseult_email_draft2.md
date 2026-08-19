*Scratch draft 2 — not part of the MSCA application, working space for the Iseult follow-up email (post Agnar/Kristján meeting).*

---

Hi Iseult (and Joscha),

Following up after discussing this further with Agnar and Kristján. There's quite a bit to get through, so I've split it by topic below.

**1. How our current pipeline works**

We have several different reference sets at deCODE, built from different chip platforms with different SNP content, so it's probably easier if I just explain how the pipeline actually runs.

We call our in-house IBD method bedIBD. It's based on an algorithm similar to IBIS, working directly on unphased, hard-called genotypes rather than needing phased data (the full method is described in the preprint below). It runs as part of a broader popgen pipeline, once per ancient sample, with a minimum segment length built in; for the panel we're using here, that's 3cM. Re-running with a different threshold means re-running part of that pipeline, not the whole thing, but it still costs real compute time, so it's not something we do on a whim.

All our ancient individuals are imputed with GLIMPSE2 first, and only if they reach a minimum depth (≥0.08x WGS, ≥0.5x for 1240k capture). That step is also where phasing comes from, which matters for the ancIBD question below.

For Scandinavia specifically, our pipeline set is 17,526 present-day individuals genotyped on OmniExpress, and the bed files we run IBD on contain 600,000 SNPs, a fairly normal marker count for that chip. We have imputed genotypes for a subset of these individuals too, but haven't used that version in a validated run yet. Not all our reference sets are OmniExpress, by the way, just chip data generally; OmniExpress happens to be what Scandinavia is on.

We also have a broader European set, around 168,000 SNPs and 10,083 individuals, which we mainly use for PCA rather than IBD; too few individuals there to give you anything meaningful.

Method reference: https://www.biorxiv.org/content/10.64898/2026.06.29.730585v1 (note the paper itself used a different threshold than 3cM, chosen for that specific analysis).

**2. Sample lists and summary statistics**

I'll send you the IBD summary statistics (≥3cM) against the Scandinavian set now, since that's already sitting there ready to go.

For the rest, it was really useful having Joscha's list of specific individuals from Antonio et al./Rodríguez-Varela/Stolarek. If you're mostly interested in a subset of the other comparative datasets too, a similar list would save us sending you a load of data you don't actually need. Once we have that, we'll get you summary stats for the remaining Traena individuals and whichever comparative individuals you're after.

**3. Why going below 3cM isn't just us being cautious**

Agnar's hesitant about lowering the threshold, for two reasons. First, accuracy: bedIBD works on unphased data, and below 3cM the number of fragments called gets excessive, without phase information there's just not enough to reliably tell a real short segment from noise. Second, file size: with thousands of modern individuals in the reference set, the number of sub-3cM fragments would be huge, and the output files enormous.

It's also worth saying that how low you need to go depends on the reference set size. Ours is large enough that we probably don't need to push the threshold down for statistical power the way you might with a smaller panel. Good topic for the call.

**4. The ancIBD option**

ancIBD doesn't fit into our per-sample pipeline the way bedIBD does. It has to be run once, across all samples together, rather than incrementally. The upside is that because it uses phased data, we could probably go lower than 3cM with it, maybe down to 2cM, without the same noise problem.

But there are real costs: it'd be a separate analysis rather than an extension of what exists; it would need the imputed modern reference data rather than the chip data we've actually validated, which is untested territory for us; and because a full run is heavy on the cluster, we'd want to avoid doing it more than once, which means knowing exactly which individuals and which SNP set to use before we start, not figuring it out as we go.

On the ancient side this isn't a blocker; our samples are already phased via GLIMPSE2, so that requirement's covered. We have noticed IBD gets messier at the lower end of our depth range, which lines up with ancIBD's own recommended depths (>0.25x WGS, >1x for 1240k), and phasing quality probably varies with depth too, which might explain some of that. Relevant for the short (2-8cM) segment work specifically, since phasing errors tend to create false short segments.

**Next steps**

Might be easiest to get Harald, Kristján, Agnar and me on a Zoom call to talk through the threshold trade-offs before we commit cluster time to a specific ancIBD run. Let me know what times work for you.

All the best,
Sunna
