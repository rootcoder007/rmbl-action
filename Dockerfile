# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.1 = sha-e7b0897 (rmorie-bricklayer e7b08976, the 1.0.1 CRAN build with the archive fallback), 2026-10-22.
# To bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.1
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.1@sha256:fdba8972fc78a8f6ccbb519c0508312db877142b3ec3957b7d6886d6e61c343f

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
