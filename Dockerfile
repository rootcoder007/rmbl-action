# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.1.0 (rmorie-bricklayer ac3f047c, the 1.1.0 release), 2026-11-01.
# Dependabot opens the bump and dependabot-merge.yml merges and releases it;
# to bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.1.0
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.1.0@sha256:dd8c935e007e31f78f6d5113a7e86db1083f8bebd909dfe5ae60174eac1994e0

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
