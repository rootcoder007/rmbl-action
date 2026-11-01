# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.5 (rmorie-bricklayer d10163c4, the 1.0.5 release), 2026-11-01.
# Dependabot opens the bump and dependabot-merge.yml merges and releases it;
# to bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.5
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.5@sha256:c844df122fe3ee53a63e1db97f8e6db4cb2b76c4ebc447f3fb1e635345c82549

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
