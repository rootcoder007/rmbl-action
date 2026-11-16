# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.1.1 (rmorie-bricklayer 58249e4c, the 1.1.1 release), 2026-11-12.
# Dependabot opens the bump and dependabot-merge.yml merges and releases it;
# to bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.1.1
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.1.1@sha256:b3c163a7f3da88476a1912bd6b40b0652882c8799c30637ab4a6a8bf35bbc813

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
