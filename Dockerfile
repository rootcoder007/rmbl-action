# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.1 = sha-9f6d660 (rmorie-bricklayer 9f6d6603, the 1.0.1 CRAN build with the archive fallback), 2026-10-22.
# To bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.1
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.1@sha256:921a8aed8596e631e17f3c480e28ab2257d53d0812b707efa55d7a26552b42b3

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
