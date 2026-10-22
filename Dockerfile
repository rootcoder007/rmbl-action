# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.1 = sha-58c7f5a (rmorie-bricklayer 58c7f5ab, the 1.0.1 CRAN build), 2026-10-22.
# To bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.1
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.1@sha256:ad27562a802acaaeed7fd1cc510015f4635faedcb087cf894a6168dc9ae34b69

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
