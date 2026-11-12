# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.1.1 (rmorie-bricklayer 58249e4c, the 1.1.1 release), 2026-11-12.
# Dependabot opens the bump and dependabot-merge.yml merges and releases it;
# to bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.1.1
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.1.1@sha256:32a65614da826d102e850bb2fc2142bb22c1cff04d1c741745a5c43468104bd7

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
