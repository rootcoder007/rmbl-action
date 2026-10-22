# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.1 = sha-0bcd6d1 (rmorie-bricklayer 0bcd6d1a, the 1.0.1 CRAN build), 2026-10-22.
# To bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.1
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.1@sha256:d77bad6b877fac558466ba07485354a44445db7cd46f88c38e8b6f4b88742290

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
