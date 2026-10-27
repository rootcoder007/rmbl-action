# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.3 (rmorie-bricklayer e026b54e, the 1.0.3 release), 2026-10-27.
# Dependabot opens the bump and dependabot-merge.yml merges and releases it;
# to bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.3
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.3@sha256:b8e49353f3b38dcd96502dab99495b8c6e2d9b8f5fae7012ee5d44245d98d6ef

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
