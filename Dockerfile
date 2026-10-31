# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.4 (rmorie-bricklayer b15a1d25, the 1.0.4 release), 2026-10-31.
# Dependabot opens the bump and dependabot-merge.yml merges and releases it;
# to bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.4
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.4@sha256:34eab600d21eed5ef1499ef35f7f2ec0e14283bd863c6223e933a51f16ce2410

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
