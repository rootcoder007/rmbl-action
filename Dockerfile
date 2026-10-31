# The rmoriebricklayer image: R, the analysis packages, and the package installed (rmbl on PATH).
# Pinned by digest; the tag is what Dependabot (docker, .github/dependabot.yml) tracks.
# Digest from tag 1.0.3 (rmorie-bricklayer 8bf9a019, the moved 1.0.3 tag), 2026-10-29.
# Dependabot opens the bump and dependabot-merge.yml merges and releases it;
# to bump by hand: skopeo inspect --format '{{.Digest}}' docker://ghcr.io/rootcoder007/rmorie-bricklayer:1.0.3
FROM ghcr.io/rootcoder007/rmorie-bricklayer:1.0.3@sha256:994f86fff296553019b82473766dc0674dd907729d9b2e2e04f60c5d71f54751

COPY entrypoint.sh check.R /rmbl/
COPY spec /rmbl/spec
ENTRYPOINT ["/rmbl/entrypoint.sh"]
