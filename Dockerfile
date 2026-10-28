# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.3 (rmorie-bricklayer e026b54e, the 1.0.3 release), 2026-10-27.
# Dependabot opens the bump and dependabot-merge.yml merges and releases it;
# to bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.3
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.3@sha256:fcba1d095363557aff234f828045a615ceba22769aacfd96d97f420df3bcf82c

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
