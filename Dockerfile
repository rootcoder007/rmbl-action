# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.2 = sha-1052d5d (rmorie-bricklayer 1052d5d7, the 1.0.2 release), 2026-10-22.
# To bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.2
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.2@sha256:ba1aad78a84c45238d2b34cd1cd3a47ea4b59e9dbda1d9ba0f628fa8649e87e6

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
