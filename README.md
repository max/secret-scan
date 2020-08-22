# Secret Scan for GitHub Actions

Scan your repo for secrets. AWS tokens, keys, this has you covered.

## Example

```yaml
on: push
name: Find Secrets
jobs:
  main:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: max/secret-scan@master
```
