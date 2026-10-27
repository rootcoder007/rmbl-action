# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.3 (rmorie-bricklayer 6fefbaab, the 1.0.3 release), 2026-10-27.
# Dependabot opens the bump and dependabot-merge.yml merges and releases it;
# to bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.3
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.3@sha256:c2071095ea48579ec1a7f394812d871da474b287578fa5cebb2985e2cc82cdff

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
